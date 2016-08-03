package com.piotr.controller;

import com.piotr.model.Company;
import com.piotr.model.Competitor;
import com.piotr.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by jalos on 12.07.2016.
 */
@Controller
public class CompanyController {
    @Autowired
    CompanyService companyService;

    @RequestMapping(value = "/company-list", method = RequestMethod.GET)
//blad 404 z value! mus sie zgadzac z jsp <c:url>
    public String getCompanyView(Model model) { //link i fomumlarz wysylalia. akcja formularza albo href linka
        List<Company> companies = companyService.findAll();
        model.addAttribute("CompanyList", companies);//dodajemy do jsp do petli zeby petla mogla sie odwolywac
        return "companies-page";// musi zgadza z nazwa pliku znowu byloby 404
    }

    @RequestMapping(value = "/create-company", method = RequestMethod.GET)
    public String getCreateCompany(Model model) {
        return "company-create-page";
    }


    @RequestMapping(value = "/create-company", method = RequestMethod.POST)
    public String saveCompany(@RequestParam(value = "name") String name,
                              @RequestParam(value = "taxId") String taxId,
                              @RequestParam(value = "address") String address,
                              @RequestParam(value = "numberOfEmployees") Integer numberOfEmployees,
                              @RequestParam(value = "industry") String industry) {
        Company company = new Company();
        company.setName(name);
        company.setTaxId(taxId);
        company.setAddress(address);
        company.setnumberOfEmployees(numberOfEmployees);
        company.setIndustry(industry);
        companyService.save(company);
        return "redirect:/company-list";
    }

    @RequestMapping(value = "/company-edit", method = RequestMethod.GET)
    public String edit(Model model, @RequestParam(value = "id") Long id) {
        Company company = companyService.findById(id);
        model.addAttribute("company", company);
        return "company-edit-page"; // <- nazwa strony JSP (nazwa pliku)


    }

    @RequestMapping(value = "/deleteCompanyAction", method = RequestMethod.POST)
    public String delete(Model model, @RequestParam(value = "id") Long id) {
        Company company = new Company();
        company.getId();
        companyService.delete(id);
        return "redirect:/company-list"; // <- nazwa akcje zdefiniowanej jako value w adnotacji RequestMapping
    }

    @RequestMapping(value = "/company-edit", method = RequestMethod.POST)
    public String saveCompany(@RequestParam(value = "id") Long id,
                              @RequestParam(value = "name") String name,
                              @RequestParam(value = "taxId") String taxId,
                              @RequestParam(value = "address") String address,
                              @RequestParam(value = "numberOfEmployees") Integer numberOfEmployees,
                              @RequestParam(value = "industry") String industry) {
        Company company = companyService.findById(id);
        company.setIndustry(industry);
        company.setnumberOfEmployees(numberOfEmployees);
        company.setAddress(address);
        company.setTaxId(taxId);
        company.setName(name);
        companyService.save(company);

        return "redirect:/company-list";
    }
}

