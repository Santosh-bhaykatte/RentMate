package com.rentmate.model;

public class ContactMessage {
    private String name, email, mobile, message;

    public ContactMessage(String name, String email, String mobile, String message) {
        this.name = name;
        this.email = email;
        this.mobile = mobile;
        this.message = message;
    }

    // Getters
    public String getName() { return name; }
    public String getEmail() { return email; }
    public String getMobile() { return mobile; }
    public String getMessage() { return message; }
}
