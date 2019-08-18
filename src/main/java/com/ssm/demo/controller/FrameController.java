package com.ssm.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/frame")
public class FrameController {
    @RequestMapping("/main")
    public String test(){
        return "frame/main";
    }
    @RequestMapping("/tables")
    public String tables(){
        return "frame/tables";
    }
    @RequestMapping("/home")
    public String home(){
        return "frame/home";
    }
    @RequestMapping("/charts")
    public String charts(){
        return "frame/charts";
    }
    @RequestMapping("/forms")
    public String forms(){
        return "frame/forms";
    }
}
