package com.rentmate.model;

public class Item {
    private int id;
    private String name;
    private String category;
    private String description;
    private String imagePath;
    private double pricePerMonth;
    private int stock;

    // Default constructor
    public Item() {}

    // Optional: constructor with all fields (can be used in DAO or testing)
    public Item(int id, String name, String category, String description, String imagePath, double pricePerMonth, int stock) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.description = description;
        this.imagePath = imagePath;
        this.pricePerMonth = pricePerMonth;
        this.stock = stock;
    }

    // Getters & Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public double getPricePerMonth() {
        return pricePerMonth;
    }

    public void setPricePerMonth(double pricePerMonth) {
        this.pricePerMonth = pricePerMonth;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
}
