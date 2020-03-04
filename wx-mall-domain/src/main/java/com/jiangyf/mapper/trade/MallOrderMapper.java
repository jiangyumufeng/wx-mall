package com.jiangyf.mapper.trade;

import com.jiangyf.model.trade.MallOrder;
import com.jiangyf.model.trade.MallOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallOrderMapper {
    long countByExample(MallOrderExample example);

    int deleteByExample(MallOrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MallOrder record);

    int insertSelective(MallOrder record);

    List<MallOrder> selectByExample(MallOrderExample example);

    MallOrder selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") MallOrder record, @Param("example") MallOrderExample example);

    int updateByExample(@Param("record") MallOrder record, @Param("example") MallOrderExample example);

    int updateByPrimaryKeySelective(MallOrder record);

    int updateByPrimaryKey(MallOrder record);
}