package com.ssm.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/file")
public class FileUploadController {
    @RequestMapping("/up")
    public String fileUpload(){
        return "";
    }
}
