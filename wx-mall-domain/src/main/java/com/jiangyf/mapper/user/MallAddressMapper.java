package com.jiangyf.mapper.user;

import com.jiangyf.model.user.MallAddress;
import com.jiangyf.model.user.MallAddressExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallAddressMapper {
    long countByExample(MallAddressExample example);

    int deleteByExample(MallAddressExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallAddress record);

    int insertSelective(MallAddress record);

    List<MallAddress> selectByExample(MallAddressExample example);

    MallAddress selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallAddress record, @Param("example") MallAddressExample example);

    int updateByExample(@Param("record") MallAddress record, @Param("example") MallAddressExample example);

    int updateByPrimaryKeySelective(MallAddress record);

    int updateByPrimaryKey(MallAddress record);
}