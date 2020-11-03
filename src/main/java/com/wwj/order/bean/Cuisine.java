package com.wwj.order.bean;

public class Cuisine {
    private Integer id;

    private String foodType;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFoodType() {
        return foodType;
    }

    public void setFoodType(String foodType) {
        this.foodType = foodType == null ? null : foodType.trim();
    }
}