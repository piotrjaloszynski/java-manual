package com.piotr.service.Impl;

import com.piotr.dao.CompanyDao;
import com.piotr.model.Company;
import com.piotr.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by jalos on 12.07.2016.
 */
@Service
public class CompanyServiceImpl implements CompanyService {
  @Autowired
  private CompanyDao companyDao;
  @Override
    public List<Company> findAll(){
      return companyDao.findAll();
  }

  @Override
  public Company save(Company company) {
    return companyDao.save(company);
  }

  @Override
  public Company findById(Long id) {
    return companyDao.findOne(id);
  }


public void delete (Long id){
  companyDao.delete(id);
}
}

