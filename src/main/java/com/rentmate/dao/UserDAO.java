package com.rentmate.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.rentmate.model.User;

public class UserDAO {
	private Connection conn;

	public UserDAO(Connection conn) {
		this.conn = conn;
	}

	// check for duplicate email
	public boolean isEmailRegistered(String email) {
		String sql = "SELECT id FROM users WHERE email = ?";
		try (PreparedStatement ps = conn.prepareStatement(sql)) {
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			return rs.next(); // true if any record exists
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	// Signup
	public boolean registerUser(User user) {
		String sqlinsert = "INSERT INTO users (name, email, password, phone) VALUES (?, ?, ?, ?)";

		try (PreparedStatement ps = conn.prepareStatement(sqlinsert)) {
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getPhone());

			int rows = ps.executeUpdate();
			return rows > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	// Login
	public User login(String email, String password) {
		User user = null;
		try {
			String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id")); // <--- Set the retrieved ID here
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setPassword(rs.getString("password"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
}
