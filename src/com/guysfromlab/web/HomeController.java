package com.guysfromlab.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HomeController {

    @GetMapping
    public ModelAndView getHomePage() {
        ModelAndView mav = new ModelAndView("index");
        mav.addObject("name", 50);
        return mav;
    }
}
