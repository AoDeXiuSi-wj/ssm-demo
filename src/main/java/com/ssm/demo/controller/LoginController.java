package com.ssm.demo.controller;

import com.ssm.demo.dao.PUserMapper;
import com.ssm.demo.entity.PUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
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
    @Qualifier("PUserMapper")
    @Autowired
    private PUserMapper pUserMapper;
    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/goLogin")
    public String loginOut(){
        return "login";
    }

    @ResponseBody
    @RequestMapping("/find")
    public Map<String, Object> find(HttpServletRequest req){
        String logName=req.getParameter("logName");
        String logPswd=req.getParameter("logPswd");
        PUser pUser = pUserMapper.selectByNameAndPswd(logName,logPswd);
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("name",pUser.getUname());
        if(pUser!= null){
            map.put("stat","success");
        }else {
            map.put("stat","fail");
        }
        return map;
    }
}


