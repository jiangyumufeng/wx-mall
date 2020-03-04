package com.jiangyf.mapper.trade;

import com.jiangyf.model.trade.MallOrderSetting;
import com.jiangyf.model.trade.MallOrderSettingExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallOrderSettingMapper {
    long countByExample(MallOrderSettingExample example);

    int deleteByExample(MallOrderSettingExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallOrderSetting record);

    int insertSelective(MallOrderSetting record);

    List<MallOrderSetting> selectByExample(MallOrderSettingExample example);

    MallOrderSetting selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallOrderSetting record, @Param("example") MallOrderSettingExample example);

    int updateByExample(@Param("record") MallOrderSetting record, @Param("example") MallOrderSettingExample example);

    int updateByPrimaryKeySelective(MallOrderSetting record);

    int updateByPrimaryKey(MallOrderSetting record);
}