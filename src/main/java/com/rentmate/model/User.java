package com.rentmate.model;

public class User 
{
	private int id;		// ----
	private String name, email, password, phone;
	
	public User() {
		
	}

	public User(String name, String email, String password, String phone) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.phone = phone;
	}

	// Getters
	public int getId() {		//----
        return id;
    }
	public String getName() { return name; }
	public String getEmail() { return email; }
	public String getPassword() { return password; }
	public String getPhone() { return phone; }

	// Setters
	public void setId(int id) {		// ----
        this.id = id;
    }
	
	public void setName(String name) {
		this.name = name;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
