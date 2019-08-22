package com.ssm.demo.controller;

import com.ssm.demo.dao.PUserMapper;
import com.ssm.demo.entity.PUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserInfoController {
    @Qualifier("PUserMapper")
    @Autowired
    private PUserMapper pUserMapper;
    @ResponseBody
    @RequestMapping("/info")
    public String userInfo(ModelMap modelMap){
        Map<String,Object> map=new HashMap<String,Object>();
        PUser pUser=pUserMapper.selectByPrimaryKey(1);
        if (pUser!=null){
            map.put("msg","已登录");
            map.put("user",pUser);
            System.out.println("\033[32;4m" + "\n"+pUser.toString()+"\n" + "\033[0m");
            System.out.println("\033[32;4m" + "\n"+map.get("msg")+"\n" + "\033[0m");
        } else{
            map.put("msg","未登录");
        }
        modelMap.addAttribute("map",map);
        return "success";
    }
}
