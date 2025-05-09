package com.rentmate.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.rentmate.model.Item;
import com.rentmate.utils.DBConnection;

public class ItemDAO {
	public Item getItemById(int itemId) {
		Item item = null;
		try (Connection conn = DBConnection.getConnection()) {
			String sql = "SELECT * FROM items WHERE id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, itemId);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				item = new Item();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setCategory(rs.getString("category"));
				item.setDescription(rs.getString("description"));
				item.setImagePath(rs.getString("image_path"));
				item.setPricePerMonth(rs.getDouble("price_per_month"));
				// add others if needed
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return item;
	}

}
