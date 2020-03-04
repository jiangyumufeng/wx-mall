package com.jiangyf.mapper.trade;

import com.jiangyf.model.trade.MallOrderGoods;
import com.jiangyf.model.trade.MallOrderGoodsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallOrderGoodsMapper {
    long countByExample(MallOrderGoodsExample example);

    int deleteByExample(MallOrderGoodsExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallOrderGoods record);

    int insertSelective(MallOrderGoods record);

    List<MallOrderGoods> selectByExample(MallOrderGoodsExample example);

    MallOrderGoods selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallOrderGoods record, @Param("example") MallOrderGoodsExample example);

    int updateByExample(@Param("record") MallOrderGoods record, @Param("example") MallOrderGoodsExample example);

    int updateByPrimaryKeySelective(MallOrderGoods record);

    int updateByPrimaryKey(MallOrderGoods record);
}