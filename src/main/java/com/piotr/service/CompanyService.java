package com.piotr.service;

import com.piotr.model.Company;

import java.util.List;

/**
 * Created by jalos on 12.07.2016.
 */
public interface CompanyService {

    List<Company> findAll();

    Company save(Company company);

    Company findById(Long id);

    void delete(Long id);

}
