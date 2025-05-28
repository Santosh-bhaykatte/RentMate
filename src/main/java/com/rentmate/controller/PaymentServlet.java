package com.rentmate.controller;

import com.rentmate.dao.BookingDAO;
import com.rentmate.model.Booking;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.math.BigDecimal;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private String RAZORPAY_KEY_ID;
    private String RAZORPAY_KEY_SECRET;
    private BookingDAO bookingDAO;
    private HttpClient httpClient;

    public void init() throws ServletException {
        super.init();
        bookingDAO = new BookingDAO();
        httpClient = HttpClient.newHttpClient(); // Initialize HTTP client

        Properties prop = new Properties();
        try {
            // Try multiple locations for the config file
            java.io.InputStream configStream = getServletContext().getResourceAsStream("/WEB-INF/config.properties");
            
            if (configStream == null) {
                // Try alternative location
                configStream = getClass().getClassLoader().getResourceAsStream("config.properties");
            }
            
            if (configStream == null) {
                throw new ServletException("config.properties file not found in /WEB-INF/ or classpath");
            }

            prop.load(configStream);
            configStream.close();

            RAZORPAY_KEY_ID = prop.getProperty("razorpay.key.id");
            RAZORPAY_KEY_SECRET = prop.getProperty("razorpay.key.secret");

            // Debug logging
            System.out.println("Loaded Key ID: " + (RAZORPAY_KEY_ID != null ? "Present" : "NULL"));
            System.out.println("Loaded Key Secret: " + (RAZORPAY_KEY_SECRET != null ? "Present" : "NULL"));

            if (RAZORPAY_KEY_ID == null || RAZORPAY_KEY_ID.trim().isEmpty()) {
                throw new ServletException("razorpay.key.id is not configured in config.properties");
            }
            
            if (RAZORPAY_KEY_SECRET == null || RAZORPAY_KEY_SECRET.trim().isEmpty()) {
                throw new ServletException("razorpay.key.secret is not configured in config.properties");
            }

            System.out.println("Razorpay keys loaded successfully.");
            
        } catch (IOException e) {
            System.err.println("Error loading config.properties: " + e.getMessage());
            e.printStackTrace();
            throw new ServletException("Could not load config.properties: " + e.getMessage(), e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Validate Razorpay credentials are loaded
        if (RAZORPAY_KEY_ID == null || RAZORPAY_KEY_SECRET == null) {
            request.setAttribute("errorMessage", "Payment service is not properly configured.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
            return;
        }

        HttpSession session = request.getSession();
        Integer bookingId = (Integer) session.getAttribute("currentBookingId");
        BigDecimal totalAmount = (BigDecimal) session.getAttribute("currentBookingAmount");
        Integer userId = (Integer) session.getAttribute("userId");

        if (bookingId == null || totalAmount == null || userId == null) {
            request.setAttribute("errorMessage", "Booking details or user ID not found in session. Please start booking again.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
            return;
        }

        // Razorpay expects amount in paisa (smallest currency unit), so multiply by 100
        long amountInPaisa = totalAmount.multiply(new BigDecimal("100")).longValue();

        try {
            // Create Razorpay order using direct HTTP call
            String orderResponse = createRazorpayOrder(amountInPaisa, bookingId);
            
            // Extract order ID from JSON response
            String orderId = extractOrderId(orderResponse);
            
            if (orderId == null || orderId.isEmpty()) {
                throw new Exception("Failed to extract order ID from Razorpay response");
            }

            System.out.println("Razorpay Order created: " + orderId);

            // Fetch user's email and phone if available from session or database
            String userEmail = ""; // Placeholder
            String userPhone = ""; // Placeholder
            // Example:
            // UserDAO userDAO = new UserDAO();
            // User user = userDAO.getUserById(userId);
            // if (user != null) {
            //     userEmail = user.getEmail();
            //     userPhone = user.getPhone();
            // }

            // Pass order details to payment.jsp
            request.setAttribute("orderId", orderId);
            request.setAttribute("amount", totalAmount.toString());
            request.setAttribute("currency", "INR");
            request.setAttribute("keyId", RAZORPAY_KEY_ID);
            request.setAttribute("bookingId", bookingId);
            request.setAttribute("userEmail", userEmail);
            request.setAttribute("userPhone", userPhone);
            request.setAttribute("itemName", "Rental Booking");

            request.getRequestDispatcher("/payment.jsp").forward(request, response);

        } catch (Exception e) {
            System.err.println("Error in PaymentServlet: " + e.getMessage());
            e.printStackTrace();
            request.setAttribute("errorMessage", "Payment initiation failed: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }

    /**
     * Creates a Razorpay order using direct HTTP API call
     */
    private String createRazorpayOrder(long amount, Integer bookingId) throws IOException, InterruptedException {
        // Create Basic Auth header
        String auth = Base64.getEncoder()
            .encodeToString((RAZORPAY_KEY_ID + ":" + RAZORPAY_KEY_SECRET)
            .getBytes(StandardCharsets.UTF_8));
        
        // Create JSON request body
        String requestBody = String.format(
            "{\"amount\":%d,\"currency\":\"INR\",\"receipt\":\"booking_receipt_%d\",\"payment_capture\":1}",
            amount, bookingId
        );
        
        // Build HTTP request
        HttpRequest request = HttpRequest.newBuilder()
            .uri(URI.create("https://api.razorpay.com/v1/orders"))
            .header("Authorization", "Basic " + auth)
            .header("Content-Type", "application/json")
            .header("Accept", "application/json")
            .POST(HttpRequest.BodyPublishers.ofString(requestBody))
            .build();
        
        // Send request and get response
        HttpResponse<String> response = httpClient.send(request, HttpResponse.BodyHandlers.ofString());
        
        System.out.println("Razorpay API Response Status: " + response.statusCode());
        System.out.println("Razorpay API Response Body: " + response.body());
        
        if (response.statusCode() != 200) {
            throw new IOException("Razorpay API call failed with status " + response.statusCode() + ": " + response.body());
        }
        
        return response.body();
    }

    /**
     * Extracts order ID from Razorpay JSON response using regex
     */
    private String extractOrderId(String jsonResponse) {
        // Use regex to extract order ID from JSON response
        // Looking for "id":"order_xxxxx" pattern
        Pattern pattern = Pattern.compile("\"id\"\\s*:\\s*\"([^\"]+)\"");
        Matcher matcher = pattern.matcher(jsonResponse);
        
        if (matcher.find()) {
            return matcher.group(1);
        }
        
        return null;
    }

    /**
     * Alternative method to extract order ID (more robust but simple)
     */
    private String extractOrderIdAlternative(String jsonResponse) {
        try {
            // Find the first occurrence of "id":
            int idIndex = jsonResponse.indexOf("\"id\":");
            if (idIndex == -1) return null;
            
            // Find the start of the value (after the colon and quote)
            int startIndex = jsonResponse.indexOf("\"", idIndex + 5) + 1;
            if (startIndex == 0) return null;
            
            // Find the end of the value (next quote)
            int endIndex = jsonResponse.indexOf("\"", startIndex);
            if (endIndex == -1) return null;
            
            return jsonResponse.substring(startIndex, endIndex);
        } catch (Exception e) {
            System.err.println("Error extracting order ID: " + e.getMessage());
            return null;
        }
    }

    @Override
    public void destroy() {
        super.destroy();
        // HTTP client doesn't need explicit cleanup in Java 11+
    }
}