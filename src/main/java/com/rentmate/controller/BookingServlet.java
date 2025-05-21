package com.rentmate.controller;

import com.rentmate.dao.BookingDAO;
import com.rentmate.model.Booking;
import com.rentmate.dao.ItemDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet; 
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private BookingDAO bookingDAO;
	public void init() {
		bookingDAO = new BookingDAO();
		new ItemDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		Integer userId = (Integer) session.getAttribute("userId"); // Retrieve userId from session

		if (userId == null) {
			// User is not logged in. Redirect to login page or show an error.
			System.out.println("BookingServlet: User not logged in, redirecting to login.jsp");
			response.sendRedirect(
					request.getContextPath() + "/login.jsp?message=Please login to proceed with booking.");
			return;
		}

		int itemId = 0;
		Date startDate = null;
		Date endDate = null;
		String address = request.getParameter("address");
		BigDecimal totalAmount = null;

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

		try {
			// Retrieve and parse parameters
			itemId = Integer.parseInt(request.getParameter("itemId"));
			startDate = dateFormat.parse(request.getParameter("startDate"));
			endDate = dateFormat.parse(request.getParameter("endDate"));

			// Get totalAmount from client.
			String totalAmountStr = request.getParameter("totalAmount");
			if (totalAmountStr != null && !totalAmountStr.isEmpty()) {
				// Remove '₹' symbol and parse to BigDecimal
				totalAmount = new BigDecimal(totalAmountStr.replace("₹", "").trim());
			} else {
				throw new IllegalArgumentException("Total amount is missing or invalid.");
			}

		} catch (NumberFormatException e) {
			System.err.println("BookingServlet: NumberFormatException - " + e.getMessage());
			request.setAttribute("errorMessage", "Invalid item ID or amount format. Please check your input.");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
			return;
		} catch (ParseException e) {
			System.err.println("BookingServlet: ParseException - " + e.getMessage());
			request.setAttribute("errorMessage", "Invalid date format. Please use YYYY-MM-DD.");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
			return;
		} catch (IllegalArgumentException e) {
			System.err.println("BookingServlet: IllegalArgumentException - " + e.getMessage());
			request.setAttribute("errorMessage", e.getMessage());
			request.getRequestDispatcher("/error.jsp").forward(request, response);
			return;
		}

		// Basic validation (more robust validation can be added, e.g., checking future
		// dates, availability)
		if (startDate == null || endDate == null || address == null || address.trim().isEmpty()
				|| totalAmount == null) {
			System.err.println("BookingServlet: Missing required fields.");
			request.setAttribute("errorMessage", "All booking fields (dates, address, total amount) are required.");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
			return;
		}

		if (endDate.before(startDate)) {
			System.err.println("BookingServlet: End date is before start date.");
			request.setAttribute("errorMessage", "End date cannot be before start date.");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
			return;
		}

		Booking booking = new Booking();
		booking.setUserId(userId);
		booking.setItemId(itemId);
		booking.setStartDate(startDate);
		booking.setEndDate(endDate);
		booking.setAddress(address);
		booking.setTotalAmount(totalAmount);
		booking.setStatus("Pending"); // Initial status

		int bookingId = bookingDAO.addBooking(booking);

		if (bookingId > 0) {
			// Booking successfully created in the database.
			System.out.println("BookingServlet: Booking created with ID: " + bookingId + " for User ID: " + userId);

			// Store bookingId and totalAmount in session to pass to the PaymentServlet
			session.setAttribute("currentBookingId", bookingId);
			session.setAttribute("currentBookingAmount", totalAmount); // Razorpay expects amount in paisa (smallest
																		// unit)

			// Redirect to the PaymentServlet to initiate payment
			response.sendRedirect(request.getContextPath() + "/PaymentServlet");
		} else {
			// Failed to create booking
			System.err.println("BookingServlet: Failed to add booking to database.");
			request.setAttribute("errorMessage", "Failed to create booking. Please try again.");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}
}