package com.ssm.demo.controller;

import com.ssm.demo.entity.PUser;
import com.ssm.demo.service.PUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
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
    public String find(HttpServletRequest req){
        String msg="";
        System.out.println("你已通过springMVC进入controller方法。。。。");
        logger.info("你已通过springMVC进入controller方法。。。。");
        String logName=req.getParameter("logName");
        String logWord=req.getParameter("logPswd");
        System.out.println("logname:"+logName+" logWord:"+logWord);
        PUser pUser = pUserService.selectByNameAndPswd(logName,logWord);
        System.out.println("pUser:"+pUser.toString());
        if(pUser!= null){
            msg="success";
        }else {
            msg="fail";
        }
        return msg;
    }

//    @RequestMapping("/success")
//    public String success(){
//        System.out.println("登录成功。。。。");
//        logger.info("登录成功。。。。");
//        return "success";
//    }

}


