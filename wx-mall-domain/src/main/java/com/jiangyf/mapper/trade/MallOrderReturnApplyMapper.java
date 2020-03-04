package com.jiangyf.mapper.trade;

import com.jiangyf.model.trade.MallOrderReturnApply;
import com.jiangyf.model.trade.MallOrderReturnApplyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallOrderReturnApplyMapper {
    long countByExample(MallOrderReturnApplyExample example);

    int deleteByExample(MallOrderReturnApplyExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallOrderReturnApply record);

    int insertSelective(MallOrderReturnApply record);

    List<MallOrderReturnApply> selectByExample(MallOrderReturnApplyExample example);

    MallOrderReturnApply selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallOrderReturnApply record, @Param("example") MallOrderReturnApplyExample example);

    int updateByExample(@Param("record") MallOrderReturnApply record, @Param("example") MallOrderReturnApplyExample example);

    int updateByPrimaryKeySelective(MallOrderReturnApply record);

    int updateByPrimaryKey(MallOrderReturnApply record);
}