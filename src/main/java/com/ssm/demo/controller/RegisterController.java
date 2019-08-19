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
@RequestMapping("/register")
public class RegisterController {
    private Logger logger = Logger.getLogger(String.valueOf(RegisterController.class));
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
        String registerAgree=req.getParameter("registerAgree");
        String msg="";
        Map<String, Object> map = new HashMap<String, Object>();
        if("".equals(registerUsername)){
            msg="用户名不能为空！";
            map.put("stat","Failure");
        }else if("".equals(registerEmail)){
            msg="邮箱地址不能为空！";
            map.put("stat","Failure");
        }else if("".equals(registerPassword)) {
            msg="用户密码不能为空！";
            map.put("stat","Failure");
        }else if(!"ok".equals(registerAgree)){
            map.put("stat","HalfSuccess");
        }else {
            PUser pUser=new PUser();
            pUser.setUname(registerUsername);
            pUser.setUpswd(registerPassword);
            pUser.setEmail(registerEmail);
            int isOk=pUserService.insert(pUser);
            map.put("stat","success");
            map.put("name", registerUsername);
        }
        map.put("msg",msg);
        return map;
    }
}
