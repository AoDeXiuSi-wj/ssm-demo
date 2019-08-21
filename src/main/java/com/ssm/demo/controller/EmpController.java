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
@RequestMapping("/emp")
public class EmpController {
    private Logger logger = Logger.getLogger(String.valueOf(EmpController.class));
    @Autowired
    private EmpMapper empMapper;

    @RequestMapping("/queryAll")
    @ResponseBody
    public List<Emp> empTable(){
        System.out.println("wocao2222222222222 ");
        System.out.println("88888888:"+empMapper);
        List<Emp> list=new LinkedList<Emp>();
        list=empMapper.selectAll();
        for (Emp e:list
             ) {
            System.out.println(e.toString());
        }
        return list;
    }
}
