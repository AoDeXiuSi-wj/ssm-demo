package com.ssm.demo.dao;

import com.ssm.demo.entity.PUser;

public interface PUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PUser record);

    int insertSelective(PUser record);

    PUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PUser record);

    int updateByPrimaryKey(PUser record);
}