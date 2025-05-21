package com.rentmate.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.rentmate.model.Item;
import com.rentmate.utils.DBConnection;

public class ItemDAO {
	public Item getItemById(int itemId) {
		Item item = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.getConnection();
			String sql = "SELECT * FROM items WHERE id = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, itemId);
			System.out.println("Executing SQL: " + ps); // Debug

			rs = ps.executeQuery();
			if (rs.next()) {
				item = new Item();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setCategory(rs.getString("category"));
				item.setDescription(rs.getString("description"));
				item.setImagePath(rs.getString("image_path"));
				item.setPricePerMonth(rs.getDouble("price_per_month"));
				item.setStock(rs.getInt("stock"));

				System.out.println("Item loaded: " + item.getName()); // Debug
			} else {
				System.out.println("No item found with ID: " + itemId);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return item;
	}

	public List<Item> getAllItems() {
		List<Item> items = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.getConnection(); // fresh connection
			String sql = "SELECT * FROM items";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				Item item = new Item();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setCategory(rs.getString("category"));
				item.setDescription(rs.getString("description"));
				item.setImagePath(rs.getString("image_path"));
				item.setPricePerMonth(rs.getDouble("price_per_month"));
				item.setStock(rs.getInt("stock"));
				items.add(item);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return items;
	}

}
