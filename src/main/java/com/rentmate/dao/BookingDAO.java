package com.rentmate.dao;

import com.rentmate.model.Booking;
import com.rentmate.utils.DBConnection; // DBConnection utility
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date; // Use java.sql.Date for database operations
import java.math.BigDecimal;

public class BookingDAO {

	public int addBooking(Booking booking) {
		String SQL = "INSERT INTO bookings (user_id, item_id, start_date, end_date, address, total_amount, status) VALUES (?, ?, ?, ?, ?, ?, ?)";
		int bookingId = -1; // Default to -1 to indicate failure
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet generatedKeys = null;

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);

			pstmt.setInt(1, booking.getUserId());
			pstmt.setInt(2, booking.getItemId());
			pstmt.setDate(3, new Date(booking.getStartDate().getTime())); // Convert java.util.Date to java.sql.Date
			pstmt.setDate(4, new Date(booking.getEndDate().getTime())); // Convert java.util.Date to java.sql.Date
			pstmt.setString(5, booking.getAddress());
			pstmt.setBigDecimal(6, booking.getTotalAmount());
			pstmt.setString(7, booking.getStatus());

			int affectedRows = pstmt.executeUpdate();

			if (affectedRows > 0) {
				generatedKeys = pstmt.getGeneratedKeys();
				if (generatedKeys.next()) {
					bookingId = generatedKeys.getInt(1);
					booking.setId(bookingId); // Set the generated ID back to the booking object
				}
			}
		} catch (SQLException ex) {
			System.err.println("Error adding booking: " + ex.getMessage());
			ex.printStackTrace();
		} finally {
			// Close resources in reverse order of creation to avoid issues
			if (generatedKeys != null) {
				try {
					generatedKeys.close();
				} catch (SQLException e) {
					System.err.println("Error closing ResultSet: " + e.getMessage());
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					System.err.println("Error closing PreparedStatement: " + e.getMessage());
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					System.err.println("Error closing Connection: " + e.getMessage());
				}
			}
		}
		return bookingId;
	}

	public Booking getBookingById(int id) {
		String SQL = "SELECT * FROM bookings WHERE id = ?";
		Booking booking = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				booking = new Booking();
				booking.setId(rs.getInt("id"));
				booking.setUserId(rs.getInt("user_id"));
				booking.setItemId(rs.getInt("item_id"));
				booking.setStartDate(rs.getDate("start_date"));
				booking.setEndDate(rs.getDate("end_date"));
				booking.setAddress(rs.getString("address"));
				booking.setTotalAmount(rs.getBigDecimal("total_amount"));
				booking.setStatus(rs.getString("status"));
				booking.setCreatedAt(rs.getTimestamp("created_at"));
			}
		} catch (SQLException ex) {
			System.err.println("Error getting booking by ID: " + ex.getMessage());
			ex.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					System.err.println("Error closing ResultSet: " + e.getMessage());
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					System.err.println("Error closing PreparedStatement: " + e.getMessage());
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					System.err.println("Error closing Connection: " + e.getMessage());
				}
			}
		}
		return booking;
	}

	public boolean updateBookingStatus(int bookingId, String newStatus) {
		String SQL = "UPDATE bookings SET status = ? WHERE id = ?";
		boolean updated = false;
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, newStatus);
			pstmt.setInt(2, bookingId);

			int affectedRows = pstmt.executeUpdate();
			if (affectedRows > 0) {
				updated = true;
			}
		} catch (SQLException ex) {
			System.err.println("Error updating booking status: " + ex.getMessage());
			ex.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					System.err.println("Error closing PreparedStatement: " + e.getMessage());
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					System.err.println("Error closing Connection: " + e.getMessage());
				}
			}
		}
		return updated;
	}
}