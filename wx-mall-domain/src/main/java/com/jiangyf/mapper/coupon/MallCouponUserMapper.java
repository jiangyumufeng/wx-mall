package com.jiangyf.mapper.coupon;

import com.jiangyf.model.coupon.MallCouponUser;
import com.jiangyf.model.coupon.MallCouponUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallCouponUserMapper {
    long countByExample(MallCouponUserExample example);

    int deleteByExample(MallCouponUserExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallCouponUser record);

    int insertSelective(MallCouponUser record);

    List<MallCouponUser> selectByExample(MallCouponUserExample example);

    MallCouponUser selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallCouponUser record, @Param("example") MallCouponUserExample example);

    int updateByExample(@Param("record") MallCouponUser record, @Param("example") MallCouponUserExample example);

    int updateByPrimaryKeySelective(MallCouponUser record);

    int updateByPrimaryKey(MallCouponUser record);
}