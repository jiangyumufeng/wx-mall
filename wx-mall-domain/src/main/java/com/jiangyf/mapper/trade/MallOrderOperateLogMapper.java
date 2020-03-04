package com.jiangyf.mapper.trade;

import com.jiangyf.model.trade.MallOrderOperateLog;
import com.jiangyf.model.trade.MallOrderOperateLogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallOrderOperateLogMapper {
    long countByExample(MallOrderOperateLogExample example);

    int deleteByExample(MallOrderOperateLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallOrderOperateLog record);

    int insertSelective(MallOrderOperateLog record);

    List<MallOrderOperateLog> selectByExample(MallOrderOperateLogExample example);

    MallOrderOperateLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallOrderOperateLog record, @Param("example") MallOrderOperateLogExample example);

    int updateByExample(@Param("record") MallOrderOperateLog record, @Param("example") MallOrderOperateLogExample example);

    int updateByPrimaryKeySelective(MallOrderOperateLog record);

    int updateByPrimaryKey(MallOrderOperateLog record);
}