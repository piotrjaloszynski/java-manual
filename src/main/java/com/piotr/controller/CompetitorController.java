package com.piotr.controller;

import com.piotr.model.Competitor;
import com.piotr.service.CompetitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by jalos on 13.07.2016.
 */

@Controller
public class CompetitorController {
    @Autowired
    CompetitorService competitorService;

    @RequestMapping(value = "/competitor-list", method = RequestMethod.GET)
    public String getCompetitorView(Model model) {
        List<Competitor> competitors = competitorService.findAll();
        model.addAttribute("competitorList", competitors);
        return "competitor-page";
    }

    @RequestMapping(value="/create-competitor",method =RequestMethod.GET)
    public String getCreateCompetitor(Model model){
        return "competitor-create-page";

    }


    @RequestMapping(value = "/create-competitor", method = RequestMethod.POST)
    public String saveCompetitor(@RequestParam(value = "area") String area,
                                 @RequestParam(value = "brand") String brand,
                                 @RequestParam(value = "capacity") String capacity,
                                 @RequestParam(value = "lifeExpectancy") Integer lifeExpectancy) {

        Competitor competitor = new Competitor();
        competitor.setArea(area);
        competitor.setBrand(brand);
        competitor.setCapacity(capacity);
        competitor.setLifeExpectancy(lifeExpectancy);
        competitorService.save(competitor);
        return "redirect:/competitor-list";
    }

    @RequestMapping(value = "/deleteCompetitorAction", method = RequestMethod.POST)
    public String delete(Model model, @RequestParam(value = "id") Long id) {

        competitorService.delete(id);
        return "redirect:/competitor-list";

    }

    @RequestMapping(value = "/competitor-edit", method = RequestMethod.GET)
    public String edit(Model model, @RequestParam(value = "id") Long id) {
        Competitor competitor = competitorService.findById(id);
        model.addAttribute("competitor", competitor);
        return "competitor-edit-page";

    }

    @RequestMapping(value = "/competitor-edit", method = RequestMethod.POST)
    public String saveCompetitor(@RequestParam(value = "id") Long id,
                                 @RequestParam(value = "area") String area,
                                 @RequestParam(value = "brand") String brand,
                                 @RequestParam(value = "capacity") String capacity,
                                 @RequestParam(value = "lifeExpectancy") Integer lifeExpectancy) {
        Competitor competitor = competitorService.findById(id);
        competitor.setCapacity(capacity);
        competitor.setLifeExpectancy(lifeExpectancy);
        competitor.setBrand(brand);
        competitor.setArea(area);
        competitorService.save(competitor);
        return "redirect:/competitor-list";

    }
}
