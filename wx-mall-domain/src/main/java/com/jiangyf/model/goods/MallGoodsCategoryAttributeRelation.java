package com.jiangyf.model.goods;

import java.io.Serializable;

/**
 * mall_goods_category_attribute_relation
 * @author 
 */
public class MallGoodsCategoryAttributeRelation implements Serializable {
    private Long id;

    private Long goodsCategoryId;

    private Long goodsAttributeId;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getGoodsCategoryId() {
        return goodsCategoryId;
    }

    public void setGoodsCategoryId(Long goodsCategoryId) {
        this.goodsCategoryId = goodsCategoryId;
    }

    public Long getGoodsAttributeId() {
        return goodsAttributeId;
    }

    public void setGoodsAttributeId(Long goodsAttributeId) {
        this.goodsAttributeId = goodsAttributeId;
    }
}