package com.jiangyf.mapper.goods;

import com.jiangyf.model.goods.MallGoodsAttributeValue;
import com.jiangyf.model.goods.MallGoodsAttributeValueExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallGoodsAttributeValueMapper {
    long countByExample(MallGoodsAttributeValueExample example);

    int deleteByExample(MallGoodsAttributeValueExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallGoodsAttributeValue record);

    int insertSelective(MallGoodsAttributeValue record);

    List<MallGoodsAttributeValue> selectByExample(MallGoodsAttributeValueExample example);

    MallGoodsAttributeValue selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallGoodsAttributeValue record, @Param("example") MallGoodsAttributeValueExample example);

    int updateByExample(@Param("record") MallGoodsAttributeValue record, @Param("example") MallGoodsAttributeValueExample example);

    int updateByPrimaryKeySelective(MallGoodsAttributeValue record);

    int updateByPrimaryKey(MallGoodsAttributeValue record);
}