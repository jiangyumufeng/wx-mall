package com.jiangyf.mapper.coupon;

import com.jiangyf.model.coupon.MallCoupon;
import com.jiangyf.model.coupon.MallCouponExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MallCouponMapper {
    long countByExample(MallCouponExample example);

    int deleteByExample(MallCouponExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MallCoupon record);

    int insertSelective(MallCoupon record);

    List<MallCoupon> selectByExample(MallCouponExample example);

    MallCoupon selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MallCoupon record, @Param("example") MallCouponExample example);

    int updateByExample(@Param("record") MallCoupon record, @Param("example") MallCouponExample example);

    int updateByPrimaryKeySelective(MallCoupon record);

    int updateByPrimaryKey(MallCoupon record);
}