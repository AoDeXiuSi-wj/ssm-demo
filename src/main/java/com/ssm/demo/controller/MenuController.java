package com.ssm.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/data")
public class MenuController {
    @RequestMapping("/menu")
    public String switchMenu(String type){
        String url="";
        System.out.println("type:"+type);
        if(type!=null) {
            if (type.equals("home")) {
                url = "frame/home";
            } else if (type.equals("tables")){
                url = "frame/tables";
            } else if (type.equals("charts")){
                url = "frame/charts";
            } else if (type.equals("forms")){
                url = "frame/forms";
            } else if (type.equals("upload")){
                url = "frame/upload";
            } else {
                url = "frame/home";
            }
        }
        return url;
    }
}
