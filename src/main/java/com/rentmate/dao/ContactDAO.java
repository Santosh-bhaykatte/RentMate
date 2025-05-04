package com.rentmate.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.rentmate.model.ContactMessage;

public class ContactDAO {
    private Connection conn;

    public ContactDAO(Connection conn) {
        this.conn = conn;
    }

    public boolean saveMessage(ContactMessage msg) {
        String sql = "INSERT INTO contact_messages (name, email, mobile, message) VALUES (?, ?, ?, ?)";
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, msg.getName());
            ps.setString(2, msg.getEmail());
            ps.setString(3, msg.getMobile());
            ps.setString(4, msg.getMessage());
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
