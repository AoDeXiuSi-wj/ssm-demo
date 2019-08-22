package com.ssm.demo.controller;

import com.ssm.demo.dao.PUserMapper;
import com.ssm.demo.entity.PUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

@Controller
@RequestMapping("/login")
public class LoginController {
    private Logger logger = Logger.getLogger(String.valueOf(LoginController.class));
    @Qualifier("PUserMapper")
    @Autowired
    private PUserMapper pUserMapper;

    @RequestMapping("/in")
    public String login(HttpServletRequest req, PUser pUser, Model model){
        String logName=req.getParameter("logName");
        String logPswd=req.getParameter("logPswd");
        Map<String,Object> map=new HashMap<String, Object>();
        PUser user = pUserMapper.selectByNameAndPswd(logName,logPswd);
        if(user!=null) {
            //setSessionPUser(req,user);
            map.put("stat","success");
            map.put("url","success");
            map.put("user",user);
        }else {
            map.put("stat","fail");
            map.put("url","login");
        }
        System.out.println("\033[32;4m" + "\n" + "登录状态："+map.get("stat") + "\n" + "\033[0m");
        return "redirect:/index";//redirect forward
    }
    @RequestMapping("/out")
    public String logout(HttpServletRequest req){
        /*PUser pUser=getSessionPUser(req);
        System.out.println("username:"+pUser.getUname());
        System.out.println("password:"+pUser.getUpswd());
        setSessionPUser(req,null);*/
        return "login";
    }
}


