package com.jiangyf.mapper;

import com.jiangyf.model.WxMallOrder;
import com.jiangyf.model.WxMallOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface WxMallOrderMapper {
    long countByExample(WxMallOrderExample example);

    int deleteByExample(WxMallOrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WxMallOrder record);

    int insertSelective(WxMallOrder record);

    List<WxMallOrder> selectByExample(WxMallOrderExample example);

    WxMallOrder selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WxMallOrder record, @Param("example") WxMallOrderExample example);

    int updateByExample(@Param("record") WxMallOrder record, @Param("example") WxMallOrderExample example);

    int updateByPrimaryKeySelective(WxMallOrder record);

    int updateByPrimaryKey(WxMallOrder record);
}