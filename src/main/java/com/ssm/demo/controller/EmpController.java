package com.ssm.demo.controller;

import com.ssm.demo.dao.EmpMapper;
import com.ssm.demo.entity.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.LinkedList;
import java.util.List;
import java.util.logging.Logger;

@Controller
@RequestMapping("/table")
public class EmpController {
    private Logger logger = Logger.getLogger(String.valueOf(EmpController.class));
    @Autowired
    private EmpMapper empMapper;

    @RequestMapping("/all")
    @ResponseBody
    public List<Emp> empTable(){
        List<Emp> list=new LinkedList<Emp>();
        list=empMapper.selectAll();
        for (Emp e:list
             ) {
            System.out.println("\033[32;4m" + "\n" + "日期："+ e.toString() + "\n" + "\033[0m");
        }
        return list;
    }
}
