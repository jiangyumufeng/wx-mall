package com.jiangyf.mapper.goods;

import com.jiangyf.model.goods.MallGoodsAttribute;
import com.jiangyf.model.goods.MallGoodsAttributeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallGoodsAttributeMapper {
    long countByExample(MallGoodsAttributeExample example);

    int deleteByExample(MallGoodsAttributeExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallGoodsAttribute record);

    int insertSelective(MallGoodsAttribute record);

    List<MallGoodsAttribute> selectByExample(MallGoodsAttributeExample example);

    MallGoodsAttribute selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallGoodsAttribute record, @Param("example") MallGoodsAttributeExample example);

    int updateByExample(@Param("record") MallGoodsAttribute record, @Param("example") MallGoodsAttributeExample example);

    int updateByPrimaryKeySelective(MallGoodsAttribute record);

    int updateByPrimaryKey(MallGoodsAttribute record);
}