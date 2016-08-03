package com.piotr.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by jalos on 13.07.2016.
 */

@Entity
@Table(name="competitor")
public class Competitor extends BaseEntity{
@Column(name="brand")
    String brand;
    @Column(name="area")
    String area;
    @Column(name="capacity")
    String capacity;
    @Column(name="lifeExpectancy")
    int lifeExpectancy;

    public Competitor(String brand, String area, String capacity, int lifeExpectancy) {
        this.brand = brand;
        this.area = area;
        this.capacity = capacity;
        this.lifeExpectancy = lifeExpectancy;
    }

    public Competitor() {
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public int getLifeExpectancy() {
        return lifeExpectancy;
    }

    public void setLifeExpectancy(int lifeExpectancy) {
        this.lifeExpectancy = lifeExpectancy;
    }

}

