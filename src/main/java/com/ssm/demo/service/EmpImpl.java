package com.ssm.demo.service;

import com.ssm.demo.dao.EmpMapper;
import com.ssm.demo.entity.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EmpImpl implements EmpMapper {
    @Autowired
    private EmpMapper empMapper;

    public int deleteByPrimaryKey(Integer empno) {
        return 0;
    }
    public int insert(Emp record) {
        return 0;
    }
    public int insertSelective(Emp record) {
        return 0;
    }
    public Emp selectByPrimaryKey(Integer empno) {
        return empMapper.selectByPrimaryKey(empno);
    }
    public List<Emp> selectAll() {
        return empMapper.selectAll();
    }
    public int updateByPrimaryKeySelective(Emp record) {
        return 0;
    }
    public int updateByPrimaryKey(Emp record) {
        return 0;
    }
}
