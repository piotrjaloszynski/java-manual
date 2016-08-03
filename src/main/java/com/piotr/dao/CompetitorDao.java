package com.piotr.dao;

import com.piotr.model.Competitor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;



@Repository
public interface CompetitorDao extends JpaRepository<Competitor,Long>{
}
