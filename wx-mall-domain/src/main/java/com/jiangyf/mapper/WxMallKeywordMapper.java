package com.jiangyf.mapper;

import com.jiangyf.model.WxMallKeyword;
import com.jiangyf.model.WxMallKeywordExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface WxMallKeywordMapper {
    long countByExample(WxMallKeywordExample example);

    int deleteByExample(WxMallKeywordExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WxMallKeyword record);

    int insertSelective(WxMallKeyword record);

    List<WxMallKeyword> selectByExample(WxMallKeywordExample example);

    WxMallKeyword selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WxMallKeyword record, @Param("example") WxMallKeywordExample example);

    int updateByExample(@Param("record") WxMallKeyword record, @Param("example") WxMallKeywordExample example);

    int updateByPrimaryKeySelective(WxMallKeyword record);

    int updateByPrimaryKey(WxMallKeyword record);
}