package com.jiangyf.mapper.goods;

import com.jiangyf.model.goods.MallGoods;
import com.jiangyf.model.goods.MallGoodsExample;
import com.jiangyf.model.goods.MallGoodsWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallGoodsMapper {
    long countByExample(MallGoodsExample example);

    int deleteByExample(MallGoodsExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallGoodsWithBLOBs record);

    int insertSelective(MallGoodsWithBLOBs record);

    List<MallGoodsWithBLOBs> selectByExampleWithBLOBs(MallGoodsExample example);

    List<MallGoods> selectByExample(MallGoodsExample example);

    MallGoodsWithBLOBs selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallGoodsWithBLOBs record, @Param("example") MallGoodsExample example);

    int updateByExampleWithBLOBs(@Param("record") MallGoodsWithBLOBs record, @Param("example") MallGoodsExample example);

    int updateByExample(@Param("record") MallGoods record, @Param("example") MallGoodsExample example);

    int updateByPrimaryKeySelective(MallGoodsWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(MallGoodsWithBLOBs record);

    int updateByPrimaryKey(MallGoods record);
}