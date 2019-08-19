package com.ssm.demo.controller;

import com.ssm.demo.entity.Emp;
import com.ssm.demo.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.LinkedList;
import java.util.List;
import java.util.logging.Logger;

@Controller
@RequestMapping("/emp")
public class EmpController {
    private Logger logger = Logger.getLogger(String.valueOf(EmpController.class));
    @Autowired
    private EmpService empService;
    @ResponseBody
    @RequestMapping(value = "/selectAll",method = RequestMethod.POST)
    public List<Emp> empTable(){
        List<Emp> list=new LinkedList<Emp>();
        list=empService.selectAll();
        for (Emp e:list
             ) {
            System.out.println(e.toString());
        }
        return list;
    }
}
