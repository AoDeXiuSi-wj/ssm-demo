package com.ssm.demo.controller;

import com.ssm.demo.entity.PUser;
import com.ssm.demo.service.PUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

@Service
@RequestMapping("/regis")
public class RegisterController {
    private Logger logger = Logger.getLogger(String.valueOf(LoginController.class));
    @Autowired
    private PUserService pUserService;
    @RequestMapping("/sign")
    public String register(){
        return "register";
    }
    @ResponseBody
    @RequestMapping("/add")
    public Map<String, Object> find(HttpServletRequest req) {
        String registerUsername=req.getParameter("registerUsername");
        String registerEmail=req.getParameter("registerEmail");
        String registerPassword=req.getParameter("registerPassword");
        PUser pUser = pUserService.selectByNameAndPswd(registerUsername, registerPassword);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("name", pUser.getUname());
        return map;
    }
}
