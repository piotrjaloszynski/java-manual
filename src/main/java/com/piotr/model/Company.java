package com.piotr.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created by jalos on 12.07.2016.
 */
@Entity


@Table(name="company")

public class Company extends BaseEntity {
  @Column(name="name")
  private String name;
   @Column (name="taxId")
   String taxId;
    @Column (name="address")
    String address;
    @OneToMany(mappedBy = "company")
    private List<User> users;

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public void setNumberOfEmployees(int numberOfEmployees) {
        this.numberOfEmployees = numberOfEmployees;
    }

    @Column (name="numberOfEmployees")
    int numberOfEmployees;
    @Column(name="industry")
    String industry;

    public Company(String name, String taxId, String address, int numberOfEmployees, String industry) {
        this.name = name;
        this.taxId = taxId;
        this.address = address;
        this.numberOfEmployees = numberOfEmployees;
        this.industry = industry;


    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTaxId() {
        return taxId;
    }

    public void setTaxId(String taxId) {
        this.taxId = taxId;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getNumberOfEmployees() {
        return numberOfEmployees;
    }

    public void setnumberOfEmployees(int numberOfEmployees) {
        this.numberOfEmployees = numberOfEmployees;
    }

    public Company() {
    }
}
