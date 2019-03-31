package com.yusk.build.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
    @GetMapping("/")
    public ModelAndView homePage(ModelAndView m) {
        m.setViewName("home");
        m.addObject("title", "Welcome to Home Page");
        return m;
    }
}
