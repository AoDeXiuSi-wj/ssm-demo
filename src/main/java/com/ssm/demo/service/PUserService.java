package com.ssm.demo.service;

import com.ssm.demo.entity.PUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

public interface PUserService {
    public PUser findByUsernameAndPwd(@Param("uname") String uname, @Param("upswd") String password);
    public PUser selectPUserById(@Param("id") int id);
}
