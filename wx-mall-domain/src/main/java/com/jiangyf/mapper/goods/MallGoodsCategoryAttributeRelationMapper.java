package com.jiangyf.mapper.goods;

import com.jiangyf.model.goods.MallGoodsCategoryAttributeRelation;
import com.jiangyf.model.goods.MallGoodsCategoryAttributeRelationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallGoodsCategoryAttributeRelationMapper {
    long countByExample(MallGoodsCategoryAttributeRelationExample example);

    int deleteByExample(MallGoodsCategoryAttributeRelationExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallGoodsCategoryAttributeRelation record);

    int insertSelective(MallGoodsCategoryAttributeRelation record);

    List<MallGoodsCategoryAttributeRelation> selectByExample(MallGoodsCategoryAttributeRelationExample example);

    MallGoodsCategoryAttributeRelation selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallGoodsCategoryAttributeRelation record, @Param("example") MallGoodsCategoryAttributeRelationExample example);

    int updateByExample(@Param("record") MallGoodsCategoryAttributeRelation record, @Param("example") MallGoodsCategoryAttributeRelationExample example);

    int updateByPrimaryKeySelective(MallGoodsCategoryAttributeRelation record);

    int updateByPrimaryKey(MallGoodsCategoryAttributeRelation record);
}