package com.jiangyf.mapper;

import com.jiangyf.model.WxMallUser;
import com.jiangyf.model.WxMallUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface WxMallUserMapper {
    long countByExample(WxMallUserExample example);

    int deleteByExample(WxMallUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WxMallUser record);

    int insertSelective(WxMallUser record);

    List<WxMallUser> selectByExample(WxMallUserExample example);

    WxMallUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WxMallUser record, @Param("example") WxMallUserExample example);

    int updateByExample(@Param("record") WxMallUser record, @Param("example") WxMallUserExample example);

    int updateByPrimaryKeySelective(WxMallUser record);

    int updateByPrimaryKey(WxMallUser record);
}