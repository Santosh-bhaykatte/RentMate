package com.rentmate.controller;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

import com.rentmate.dao.BookingDAO;
import com.rentmate.model.Booking; // To retrieve full booking details if needed
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import org.json.JSONObject; // Razorpay SDK uses org.json for JSON objects

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Properties; // For loading API keys securely

// If using annotations, remove servlet and servlet-mapping from web.xml
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // IMPORTANT: Store these securely. Best practice is to use environment variables
    // or a properties file loaded at runtime, NOT hardcoded.
    // For now, we'll read from a properties file.
    private String RAZORPAY_KEY_ID;
    private String RAZORPAY_KEY_SECRET;

    private BookingDAO bookingDAO;

    public void init() throws ServletException {
        super.init();
        bookingDAO = new BookingDAO(); // Initialize your BookingDAO

        // Load Razorpay API keys from a properties file
        // Create a file named 'config.properties' inside WEB-INF/classes or your project's classpath
        // E.g., src/main/resources/config.properties
        // Content:
        // razorpay.key.id=rzp_test_YOUR_KEY_ID
        // razorpay.key.secret=YOUR_KEY_SECRET

        Properties prop = new Properties();
        try {
            // This assumes config.properties is in src/main/resources or WEB-INF/classes
            prop.load(getServletContext().getResourceAsStream("/WEB-INF/config.properties"));
            RAZORPAY_KEY_ID = prop.getProperty("razorpay.key.id");
            RAZORPAY_KEY_SECRET = prop.getProperty("razorpay.key.secret");

            if (RAZORPAY_KEY_ID == null || RAZORPAY_KEY_ID.isEmpty() ||
                RAZORPAY_KEY_SECRET == null || RAZORPAY_KEY_SECRET.isEmpty()) {
                throw new ServletException("Razorpay API keys are not configured in config.properties.");
            }
            System.out.println("Razorpay keys loaded successfully.");
        } catch (IOException e) {
            System.err.println("Error loading config.properties: " + e.getMessage());
            throw new ServletException("Could not load Razorpay API keys. Make sure WEB-INF/config.properties exists and is readable.", e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response); // Process GET requests as POST for simplicity, though not best practice
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Integer bookingId = (Integer) session.getAttribute("currentBookingId");
        BigDecimal totalAmount = (BigDecimal) session.getAttribute("currentBookingAmount");
        Integer userId = (Integer) session.getAttribute("userId"); // Get userId for context/customer details

        if (bookingId == null || totalAmount == null || userId == null) {
            request.setAttribute("errorMessage", "Booking details or user ID not found in session. Please start booking again.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
            return;
        }

        // Razorpay expects amount in paisa (smallest currency unit), so multiply by 100
        long amountInPaisa = totalAmount.multiply(new BigDecimal("100")).longValue();

        try {
            RazorpayClient razorpay = new RazorpayClient(RAZORPAY_KEY_ID, RAZORPAY_KEY_SECRET);

            JSONObject orderRequest = new JSONObject();
            orderRequest.put("amount", amountInPaisa); // amount in the smallest currency unit (e.g., paisa for INR)
            orderRequest.put("currency", "INR"); // Specify currency (e.g., "INR")
            orderRequest.put("receipt", "booking_receipt_" + bookingId); // Unique receipt ID for your reference
            orderRequest.put("payment_capture", 1); // Auto capture payment

            Order order = razorpay.orders.create(orderRequest);
            String orderId = order.get("id"); // Razorpay Order ID

            System.out.println("Razorpay Order created: " + orderId);

            // Fetch user's email and phone if available from session or database
            // (You'll need a UserDAO method to get User by ID for this)
            String userEmail = ""; // Placeholder
            String userPhone = ""; // Placeholder
            // Example:
            // UserDAO userDAO = new UserDAO();
            // User user = userDAO.getUserById(userId); // You'd need this method in UserDAO
            // if (user != null) {
            //     userEmail = user.getEmail();
            //     userPhone = user.getPhone();
            // }


            // Pass order details to payment.jsp
            request.setAttribute("orderId", orderId);
            request.setAttribute("amount", totalAmount.toString()); // Keep for display
            request.setAttribute("currency", "INR");
            request.setAttribute("keyId", RAZORPAY_KEY_ID);
            request.setAttribute("bookingId", bookingId);
            request.setAttribute("userEmail", userEmail); // Pass user email for prefill
            request.setAttribute("userPhone", userPhone); // Pass user phone for prefill
            request.setAttribute("itemName", "Rental Booking"); // Generic item name, you can fetch actual item name

            request.getRequestDispatcher("/payment.jsp").forward(request, response);

        } catch (RazorpayException e) {
            System.err.println("RazorpayException: " + e.getMessage());
            request.setAttribute("errorMessage", "Payment initiation failed: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        } catch (Exception e) {
            System.err.println("General error in PaymentServlet: " + e.getMessage());
            e.printStackTrace();
            request.setAttribute("errorMessage", "An unexpected error occurred during payment setup.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}