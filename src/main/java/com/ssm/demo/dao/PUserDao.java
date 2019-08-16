package com.ssm.demo.dao;

import com.ssm.demo.entity.PUser;
import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

@Repository("PUserDao")
@MapperScan("com.ssm.demo.dao")
public interface PUserDao {
    public PUser findByUsernameAndPwd(@Param("uname") String username, @Param("upswd") String userpswd);
    public PUser selectPUserById(Integer id);
}
