package com.ssm.demo.service.impl;

import com.ssm.demo.dao.EmpMapper;
import com.ssm.demo.entity.Emp;
import com.ssm.demo.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("EmpMapper")
public class EmpImpl implements EmpService {
    @Autowired
    private EmpMapper empMapper;
    @Override
    public int deleteByPrimaryKey(Integer empno) {
        return 0;
    }

    @Override
    public int insert(Emp record) {
        return 0;
    }

    @Override
    public int insertSelective(Emp record) {
        return 0;
    }

    @Override
    public Emp selectByPrimaryKey(Integer empno) {
        return empMapper.selectByPrimaryKey(empno);
    }

    @Override
    public List<Emp> selectAll() {
        return empMapper.selectAll();
    }

    @Override
    public int updateByPrimaryKeySelective(Emp record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Emp record) {
        return 0;
    }
}
