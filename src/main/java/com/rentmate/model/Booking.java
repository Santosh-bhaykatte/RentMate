package com.rentmate.model;

import java.math.BigDecimal;
import java.util.Date;

public class Booking {
	private int id;
	private int userId;
	private int itemId;
	private Date startDate;
	private Date endDate;
	private String address;
	private BigDecimal totalAmount;
	private String status; // "Pending", "Confirmed", "Cancelled"
	private Date createdAt;

	// Constructors
	public Booking() {
	}

	public Booking(int userId, int itemId, Date startDate, Date endDate, String address, BigDecimal totalAmount,
			String status) {
		this.userId = userId;
		this.itemId = itemId;
		this.startDate = startDate;
		this.endDate = endDate;
		this.address = address;
		this.totalAmount = totalAmount;
		this.status = status;
	}

	// Getters and Setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public BigDecimal getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(BigDecimal totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	@Override
	public String toString() {
		return "Booking{" + "id=" + id + ", userId=" + userId + ", itemId=" + itemId + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", address='" + address + '\'' + ", totalAmount=" + totalAmount
				+ ", status='" + status + '\'' + ", createdAt=" + createdAt + '}';
	}
}