package com.ssm.demo.controller;

import com.ssm.demo.entity.PUser;
import com.ssm.demo.service.PUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

@Controller
@RequestMapping("/login")
public class LoginController {
    private Logger logger = Logger.getLogger(String.valueOf(LoginController.class));
    @Autowired
    private PUserService pUserService;
    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/loginOut")
    public String loginOut(){
        return "login";
    }

    @ResponseBody
    @RequestMapping("/find")
    public Map<String, Object> find(HttpServletRequest req){
        String logName=req.getParameter("logName");
        String logWord=req.getParameter("logPswd");
        PUser pUser = pUserService.selectByNameAndPswd(logName,logWord);
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("name",pUser.getUname());
        if(pUser!= null){
            map.put("stat","success");
        }else {
            map.put("stat","fail");
        }
        return map;
    }

//    @RequestMapping("/success")
//    public String success(){
//        System.out.println("登录成功。。。。");
//        logger.info("登录成功。。。。");
//        return "success";
//    }

}


