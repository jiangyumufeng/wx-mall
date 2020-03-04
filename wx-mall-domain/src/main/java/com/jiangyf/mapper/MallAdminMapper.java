package com.jiangyf.mapper;

import com.jiangyf.model.MallAdmin;
import com.jiangyf.model.MallAdminExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallAdminMapper {
    long countByExample(MallAdminExample example);

    int deleteByExample(MallAdminExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallAdmin record);

    int insertSelective(MallAdmin record);

    List<MallAdmin> selectByExample(MallAdminExample example);

    MallAdmin selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallAdmin record, @Param("example") MallAdminExample example);

    int updateByExample(@Param("record") MallAdmin record, @Param("example") MallAdminExample example);

    int updateByPrimaryKeySelective(MallAdmin record);

    int updateByPrimaryKey(MallAdmin record);
}