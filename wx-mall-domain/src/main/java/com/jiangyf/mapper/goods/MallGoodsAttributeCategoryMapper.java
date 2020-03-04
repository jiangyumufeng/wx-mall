package com.jiangyf.mapper.goods;

import com.jiangyf.model.goods.MallGoodsAttributeCategory;
import com.jiangyf.model.goods.MallGoodsAttributeCategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallGoodsAttributeCategoryMapper {
    long countByExample(MallGoodsAttributeCategoryExample example);

    int deleteByExample(MallGoodsAttributeCategoryExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallGoodsAttributeCategory record);

    int insertSelective(MallGoodsAttributeCategory record);

    List<MallGoodsAttributeCategory> selectByExample(MallGoodsAttributeCategoryExample example);

    MallGoodsAttributeCategory selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallGoodsAttributeCategory record, @Param("example") MallGoodsAttributeCategoryExample example);

    int updateByExample(@Param("record") MallGoodsAttributeCategory record, @Param("example") MallGoodsAttributeCategoryExample example);

    int updateByPrimaryKeySelective(MallGoodsAttributeCategory record);

    int updateByPrimaryKey(MallGoodsAttributeCategory record);
}