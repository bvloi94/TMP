package net.techeco.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by vanloibui on 4/6/16.
 */
@Controller
public class HomeController {
    @RequestMapping(value="/home")
    public String home(){
        return "home";
    }
 }
