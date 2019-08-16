package com.ssm.demo.service.impl;

import com.ssm.demo.dao.PUserDao;
import com.ssm.demo.entity.PUser;
import com.ssm.demo.service.PUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("PUserService")
public class PUserImpl implements PUserService{
    @Autowired
    private PUserDao pUserDao;
    @Override
    public PUser findByUsernameAndPwd(String username, String userpswd) {
        return pUserDao.findByUsernameAndPwd(username, userpswd);
    }

    @Override
    public PUser selectPUserById(int id) {
        return pUserDao.selectPUserById(id);
    }

}
