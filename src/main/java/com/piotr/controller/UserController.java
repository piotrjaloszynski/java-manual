package com.piotr.controller;

import com.piotr.model.Company;
import com.piotr.model.User;
import com.piotr.service.CompanyService;
import com.piotr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by jalos on 06.07.2016.
 */

@Controller //declares to be be controller
public class UserController {
    @Autowired
    UserService userService;
   @Autowired
    CompanyService companyService;
    @RequestMapping(value = "/users", method = RequestMethod.GET) //handle GET  requests for
    public String getUsersView(Model model) {
        List<User> users = userService.findAll();
        model.addAttribute("UserList", users);
        return "users-page";// tutaj nazwa strony  ktora mamy wyswietlic w jsp
        // ze wzgledu na 22 poadlismy ze ma zwracac string !!!
    }

    @RequestMapping(value = "/create-user", method = RequestMethod.GET)
    public String getCreateUser(Model model) {
        model.addAttribute("companies", companyService.findAll());
        return "user-create-page";
    }

    @RequestMapping(value = "/create-user", method = RequestMethod.POST)
    //@PostMapping(value = "/create-user")
    public String saveUser(@RequestParam(value = "name") String name,
                           @RequestParam(value = "lastName") String lastName,
                           @RequestParam(value = "email") String email,
                           @RequestParam(value = "department") String department) {

        User user = new User();
        user.setDepartment(department);
        user.setEmail(email);
        user.setLastName(lastName);
        user.setName(name);

        userService.save(user);
        return "redirect:/users";
    }

    @RequestMapping(value = "/deleteUserAction", method = RequestMethod.POST)
    public String delete(Model model, @RequestParam(value = "id") Long id) {

        userService.delete(id);
        return "redirect:/users";

    }

    @RequestMapping(value = "/user-edit", method = RequestMethod.GET)
    public String edit(Model model, @RequestParam(value = "id") Long id) {
        User user = userService.findById(id);
        model.addAttribute("user", user);
        model.addAttribute("companies",companyService.findAll());
        return "user-edit-page";
    }

    @RequestMapping(value = "/user-edit", method = RequestMethod.POST)
    public String saveUser(@RequestParam(value = "id") Long id,
                           @RequestParam(value = "name") String name,
                           @RequestParam(value = "lastName") String lastName,
                           @RequestParam(value = "email") String email,
                           @RequestParam(value = "department") String department,
                           @RequestParam(value = "company_id") Long companyId) {
        Company company = companyService.findById(companyId);
        User user = userService.findById(id);
        user.setName(name);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setDepartment(department);
        user.setCompany(company);
        userService.save(user);
        return "redirect:/users";

    }


}
