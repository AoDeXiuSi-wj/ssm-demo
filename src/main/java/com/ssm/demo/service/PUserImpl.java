package com.ssm.demo.service;

import com.ssm.demo.dao.PUserMapper;
import com.ssm.demo.entity.PUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class PUserImpl implements PUserMapper {
    @Qualifier("PUserMapper")
    @Autowired
    private PUserMapper pUserMapper;

    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    public int insert(PUser record) {
        return pUserMapper.insert(record);
    }

    public int insertSelective(PUser record) {
        return pUserMapper.insert(record);
    }

    public PUser selectByPrimaryKey(Integer id) {
        return pUserMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(PUser record) {
        return 0;
    }

    public int updateByPrimaryKey(PUser record) {
        return 0;
    }

    public PUser selectByNameAndPswd(String logName, String logPswd) {
        return pUserMapper.selectByNameAndPswd(logName,logPswd);
    }


}
