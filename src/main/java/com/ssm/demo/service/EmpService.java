package com.ssm.demo.service;

import com.ssm.demo.dao.EmpMapper;
import com.ssm.demo.entity.Emp;

import java.util.List;

public interface EmpService extends EmpMapper {
    int deleteByPrimaryKey(Integer empno);

    int insert(Emp record);

    int insertSelective(Emp record);

    Emp selectByPrimaryKey(Integer empno);

    List<Emp> selectAll();

    int updateByPrimaryKeySelective(Emp record);

    int updateByPrimaryKey(Emp record);
}
