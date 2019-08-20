package com.ssm.demo.service.impl;

import com.ssm.demo.dao.PUserMapper;
import com.ssm.demo.entity.PUser;
import com.ssm.demo.service.PUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("PUserService")
public class PUserImpl implements PUserService {
    @Autowired
    private PUserMapper pUserMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(PUser record) {
        return pUserMapper.insert(record);
    }

    @Override
    public int insertSelective(PUser record) {
        return pUserMapper.insert(record);
    }

    @Override
    public PUser selectByPrimaryKey(Integer id) {
        return pUserMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(PUser record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(PUser record) {
        return 0;
    }

    @Override
    public PUser selectByNameAndPswd(String logName, String logPswd) {
        return null;
    }


}
