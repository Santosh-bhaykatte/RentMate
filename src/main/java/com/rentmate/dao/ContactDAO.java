package com.rentmate.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.rentmate.model.ContactMessage;
import com.rentmate.utils.DBConnection;

public class ContactDAO {
	private Connection conn;

	public ContactDAO(Connection conn) {
		this.conn = conn;
	}

	public boolean saveMessage(ContactMessage msg) {
        String sql = "INSERT INTO contact_messages (name, email, mobile, message) VALUES (?, ?, ?, ?)";
        Connection conn = null; // Declare Connection outside try block
        PreparedStatement ps = null; // Declare PreparedStatement outside try block

        try {
            conn = DBConnection.getConnection(); // Get connection
            ps = conn.prepareStatement(sql); // Prepare statement

            ps.setString(1, msg.getName());
            ps.setString(2, msg.getEmail());
            ps.setString(3, msg.getMobile());
            ps.setString(4, msg.getMessage());

            // Execute the update and return true if at least one row was affected
            return ps.executeUpdate() > 0;

        } catch (SQLException e) { // Catch SQLException specifically for database errors
            System.err.println("SQL error saving contact message: " + e.getMessage());
            e.printStackTrace(); // Print stack trace for debugging
            return false;
        } catch (Exception e) { // Catch any other unexpected exceptions
            System.err.println("An unexpected error occurred while saving contact message: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
	}
}
