package com.piotr.service.Impl;


import com.piotr.dao.CompetitorDao;
import com.piotr.model.Competitor;
import com.piotr.service.CompetitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by jalos on 13.07.2016.
 */

@Service
public class CompetitorServiceImpl implements CompetitorService {
    @Autowired

    CompetitorDao competitorDao;

    public List<Competitor> findAll(){
   List<Competitor> competitors=competitorDao.findAll();
    return competitors;

}
    public Competitor save(Competitor competitor){
return competitorDao.save(competitor);
}

    @Override
    public void delete(Long id) {
     competitorDao.delete(id);

    }
public Competitor findById(Long id){
    return competitorDao.findOne(id);

}
}
