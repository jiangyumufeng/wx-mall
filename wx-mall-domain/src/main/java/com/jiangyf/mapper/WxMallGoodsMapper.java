package com.jiangyf.mapper;

import com.jiangyf.model.WxMallGoods;
import com.jiangyf.model.WxMallGoodsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface WxMallGoodsMapper {
    long countByExample(WxMallGoodsExample example);

    int deleteByExample(WxMallGoodsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WxMallGoods record);

    int insertSelective(WxMallGoods record);

    List<WxMallGoods> selectByExampleWithBLOBs(WxMallGoodsExample example);

    List<WxMallGoods> selectByExample(WxMallGoodsExample example);

    WxMallGoods selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WxMallGoods record, @Param("example") WxMallGoodsExample example);

    int updateByExampleWithBLOBs(@Param("record") WxMallGoods record, @Param("example") WxMallGoodsExample example);

    int updateByExample(@Param("record") WxMallGoods record, @Param("example") WxMallGoodsExample example);

    int updateByPrimaryKeySelective(WxMallGoods record);

    int updateByPrimaryKeyWithBLOBs(WxMallGoods record);

    int updateByPrimaryKey(WxMallGoods record);
}