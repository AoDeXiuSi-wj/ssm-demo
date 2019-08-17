package com.ssm.demo.dao;

import com.ssm.demo.entity.PUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PUser record);

    int insertSelective(PUser record);

    PUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PUser record);

    int updateByPrimaryKey(PUser record);

    PUser selectByNameAndPswd(@Param("uname")String logName,@Param("upswd")String logPswd);
}