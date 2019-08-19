package com.ssm.demo.dao;

import com.ssm.demo.entity.Emp;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmpMapper {
    int deleteByPrimaryKey(Integer empno);

    int insert(Emp record);

    int insertSelective(Emp record);

    Emp selectByPrimaryKey(Integer empno);

    List<Emp> selectAll();

    int updateByPrimaryKeySelective(Emp record);

    int updateByPrimaryKey(Emp record);
}