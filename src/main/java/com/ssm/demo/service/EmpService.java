package com.ssm.demo.service;

import com.ssm.demo.dao.EmpMapper;
import com.ssm.demo.entity.Emp;
import org.springframework.stereotype.Component;

import java.util.List;


public interface EmpService extends EmpMapper{
    @Override
    int deleteByPrimaryKey(Integer empno);

    @Override
    int insert(Emp record);

    @Override
    int insertSelective(Emp record);

    @Override
    Emp selectByPrimaryKey(Integer empno);

    @Override
    List<Emp> selectAll();

    @Override
    int updateByPrimaryKeySelective(Emp record);

    @Override
    int updateByPrimaryKey(Emp record);
}
