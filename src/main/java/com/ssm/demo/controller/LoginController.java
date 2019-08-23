package com.ssm.demo.controller;

import com.ssm.demo.dao.PUserMapper;
import com.ssm.demo.entity.PUser;
import com.ssm.demo.util.InterceptorBasePUserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

@Controller
@RequestMapping("/login")
public class LoginController extends InterceptorBasePUserInfo{
    private Logger logger = Logger.getLogger(String.valueOf(LoginController.class));
    @Qualifier("PUserMapper")
    @Autowired
    private PUserMapper pUserMapper;

    @RequestMapping("/page")
    public String loginPage(){
        return "login";
    }

    @ResponseBody
    @RequestMapping("/in")
    public Map<String, Object> login(HttpServletRequest req,Model model){
        String logName=req.getParameter("logName");
        String logPswd=req.getParameter("logPswd");
        Map<String,Object> map=new HashMap<String, Object>();
        PUser user=chkInfo(logName,logPswd);
        System.out.println("\033[32;4m" + "\n" + "放入session的用户信息："+user + "\n" + "\033[0m");
        if(user!=null){
            setSessionPUser(req,user);//给当前session会话中放入用户信息
            map.put("pUser",user);
            map.put("stat","success");
            System.out.println("\033[32;4m" + "\n" + "已登录" + "\n" + "\033[0m");
            System.out.println("\033[32;4m" + "\n" + "PUser:"+user + "\n" + "\033[0m");
        }else{
            map.put("stat","fail");
            System.out.println("\033[32;4m" + "\n" + "登陆失败" + "\n" + "\033[0m");
        }
        return map;
    }
    @RequestMapping("/out")
    public String logout(HttpServletRequest req){
        PUser pUser=getSessionPUser(req);
        System.out.println("\033[32;4m" + "\n" + "退出登录" + "\n" + "\033[0m");
        System.out.println("\033[32;4m" + "\n" + "退出时用户："+pUser + "\n" + "\033[0m");
        setSessionPUser(req,null);
        return "redirect:/login/page";//redirect forward
    }

    public PUser chkInfo(String logName,String logPswd){
        PUser pUser = pUserMapper.selectByNameAndPswd(logName,logPswd);
        System.out.println("\033[32;4m" + "\n" + "PUser_chk:"+pUser + "\n" + "\033[0m");
        if(pUser!=null) {
            return pUser;
        }else {
            return null;
        }
    }
}


