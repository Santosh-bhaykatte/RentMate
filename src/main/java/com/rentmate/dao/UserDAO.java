package com.rentmate.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.rentmate.model.User;

public class UserDAO
{
	private Connection conn;

	public UserDAO(Connection conn) {
		this.conn = conn;
	}

	public boolean registerUser(User user) {
		String sql = "INSERT INTO users (name, email, password, phone) VALUES (?, ?, ?, ?)";

		try (PreparedStatement ps = conn.prepareStatement(sql))
		{
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
}
