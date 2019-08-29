package com.ssm.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/data")
public class MenuController {
    @RequestMapping("/menu")
    public String switchMenu(String type){
        String url="";
        if(type!=null) {
            if (type.equals("home")) {
                url = "frame/home";
            } else if ("tables".equals(type)){
                url = "frame/tables";
            } else if ("charts".equals(type)){
                url = "frame/charts";
            } else if ("forms".equals(type)){
                url = "frame/forms";
            } else if ("oneupload".equals(type)){
                url = "frame/upload_one";
            } else if ("moreupload".equals(type)){
                url = "frame/upload_more";
            } else {
                url = "frame/home";
            }
        }
        return url;
    }
}
