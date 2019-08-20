package com.ssm.demo.service;

import com.ssm.demo.dao.PUserMapper;
import com.ssm.demo.entity.PUser;
import org.apache.ibatis.annotations.Param;


public interface PUserService extends PUserMapper {
    @Override
    int deleteByPrimaryKey(Integer id);

    @Override
    int insert(PUser record);

    @Override
    int insertSelective(PUser record);

    @Override
    PUser selectByPrimaryKey(Integer id);

    @Override
    int updateByPrimaryKeySelective(PUser record);

    @Override
    int updateByPrimaryKey(PUser record);

    PUser selectByNameAndPswd(String logName, String logPswd);
}
