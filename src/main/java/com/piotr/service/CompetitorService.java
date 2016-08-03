package com.piotr.service;

import com.piotr.model.Competitor;

import java.util.List;

/**
 * Created by jalos on 13.07.2016.
 */
public interface CompetitorService {
List<Competitor> findAll();
Competitor save(Competitor competitor);
void delete(Long id);
    Competitor findById(Long id);
}
