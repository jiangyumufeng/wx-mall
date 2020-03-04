package com.jiangyf.mapper.user;

import com.jiangyf.model.user.MallUserLoginLog;
import com.jiangyf.model.user.MallUserLoginLogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallUserLoginLogMapper {
    long countByExample(MallUserLoginLogExample example);

    int deleteByExample(MallUserLoginLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallUserLoginLog record);

    int insertSelective(MallUserLoginLog record);

    List<MallUserLoginLog> selectByExample(MallUserLoginLogExample example);

    MallUserLoginLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallUserLoginLog record, @Param("example") MallUserLoginLogExample example);

    int updateByExample(@Param("record") MallUserLoginLog record, @Param("example") MallUserLoginLogExample example);

    int updateByPrimaryKeySelective(MallUserLoginLog record);

    int updateByPrimaryKey(MallUserLoginLog record);
}