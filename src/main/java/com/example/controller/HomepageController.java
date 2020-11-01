package com.example.controller;

import com.example.model.User;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomepageController
{
    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String Frontpage()
    {
        return "index.jsp";
    }
    @RequestMapping("/signup")
    public ModelAndView signup()
    {
        ModelAndView mav = new ModelAndView("register.jsp");
        mav.addObject("user",new User());
        return  mav;
    }
    @RequestMapping("/addUser")
    public ModelAndView addUser(@ModelAttribute("user") User user)
    {
        ModelAndView mav = new ModelAndView("index.jsp");
        userService.save(user);
        return mav;
    }
}
