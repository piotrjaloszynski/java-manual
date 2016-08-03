package com.piotr.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created by jalos on 06.07.2016.
 */
@Entity

@Table(name= "user")
public class User extends BaseEntity{
  @Column(name="name")
  private String name;
@Column( name="last_name")
  private String lastName;

  public Company getCompany() {
    return company;
  }

  public void setCompany(Company company) {
    this.company = company;
  }

  @ManyToOne()
@JoinColumn(name="company_id")
private Company company;
  @Column (name="email")
  private String email;
  @Column (name="department")
  private String department;

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getDepartment() {
    return department;
  }

  public void setDepartment(String department) {
    this.department = department;
  }
}
