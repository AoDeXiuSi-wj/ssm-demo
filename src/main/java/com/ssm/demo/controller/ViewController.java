package com.ssm.demo.controller;

import com.ssm.demo.entity.PUser;
import com.ssm.demo.service.PUserService;
import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;
import java.util.logging.Logger;

@Controller
@RequestMapping("/login")
public class ViewController {
    private Logger logger = Logger.getLogger(String.valueOf(ViewController.class));
    @Autowired
    private PUserService pUserService;
    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @ResponseBody
    @RequestMapping("/find")
    public String find(HttpServletRequest req){
        String msg="";
        System.out.println("你已通过springMVC进入controller方法。。。。");
        logger.info("你已通过springMVC进入controller方法。。。。");
        String logName=req.getParameter("logname");
        String logWord=req.getParameter("logword");
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

    @RequestMapping("/success")
    public String success(){
        System.out.println("登录成功。。。。");
        logger.info("登录成功。。。。");
        return "success";
    }

}


