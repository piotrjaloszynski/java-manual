package com.piotr.dao;

/**
 * Created by jalos on 12.07.2016.
 */

import com.piotr.model.Company;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CompanyDao extends JpaRepository<Company,Long> {
}
