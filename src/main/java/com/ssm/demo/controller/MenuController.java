package com.ssm.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu")
public class MenuController {
    @RequestMapping("/url")
    public String switchMenu(String type){
        String url="";
        System.out.println("type:"+type);
        if(type!=null) {
            if (type.equals("home")) {
                url = "home";
            } else if (type.equals("tables")){
                url = "tables";
            } else if (type.equals("charts")){
                url = "charts";
            } else if (type.equals("forms")){
                url = "forms";
            } else {
                url = "home";
            }
        }
        return "".equals(url)?"home":url;
    }
}
