package com.jiangyf.mapper.goods;

import com.jiangyf.model.goods.MallGoodsCategory;
import com.jiangyf.model.goods.MallGoodsCategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallGoodsCategoryMapper {
    long countByExample(MallGoodsCategoryExample example);

    int deleteByExample(MallGoodsCategoryExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallGoodsCategory record);

    int insertSelective(MallGoodsCategory record);

    List<MallGoodsCategory> selectByExampleWithBLOBs(MallGoodsCategoryExample example);

    List<MallGoodsCategory> selectByExample(MallGoodsCategoryExample example);

    MallGoodsCategory selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallGoodsCategory record, @Param("example") MallGoodsCategoryExample example);

    int updateByExampleWithBLOBs(@Param("record") MallGoodsCategory record, @Param("example") MallGoodsCategoryExample example);

    int updateByExample(@Param("record") MallGoodsCategory record, @Param("example") MallGoodsCategoryExample example);

    int updateByPrimaryKeySelective(MallGoodsCategory record);

    int updateByPrimaryKeyWithBLOBs(MallGoodsCategory record);

    int updateByPrimaryKey(MallGoodsCategory record);
}