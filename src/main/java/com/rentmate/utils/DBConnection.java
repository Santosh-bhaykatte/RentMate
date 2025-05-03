package com.rentmate.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection
{
	private static Connection conn = null;

	public static Connection getConnection() {
		if (conn != null) {
			return conn;
		}

		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // use com.mysql.jdbc.Driver for older versions
			conn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/rentmate", // using db as rentmate 
				"root", // DB username
				"root" // DB password
			);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}
}
