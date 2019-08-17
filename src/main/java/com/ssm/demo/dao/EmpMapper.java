package com.ssm.demo.dao;

import com.ssm.demo.entity.Emp;
import org.springframework.stereotype.Repository;

@Repository
public interface EmpMapper {
    int deleteByPrimaryKey(Integer empno);

    int insert(Emp record);

    int insertSelective(Emp record);

    Emp selectByPrimaryKey(Integer empno);

    int updateByPrimaryKeySelective(Emp record);

    int updateByPrimaryKey(Emp record);
}