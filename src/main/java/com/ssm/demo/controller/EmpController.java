package com.ssm.demo.controller;

import com.ssm.demo.entity.Emp;
import com.ssm.demo.service.EmpService;
import com.ssm.demo.service.impl.EmpImpl;
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
    private EmpService empService;
    @Autowired
    private EmpImpl empImpl;

    @RequestMapping("/queryAll")
    @ResponseBody
    public Emp empTable(){
        System.out.println("wocao2222222222222 ");
        System.out.println("88888888:"+empService);
        List<Emp> list=new LinkedList<Emp>();
        /*list=empService.selectAll();
        for (Emp e:list
             ) {
            System.out.println(e.toString());
        }
        return list;*/
        Emp ee=new Emp();
        ee = empService.selectByPrimaryKey(1);
       // System.out.println("111111111111111"+ee.toString());
        list.add(ee);
      //  System.out.println("989899989333"+emp.getHiredate());
        return ee;
    }
}
