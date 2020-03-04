package com.jiangyf.model.goods;

import java.io.Serializable;

/**
 * mall_goods_attribute_value
 * @author 
 */
public class MallGoodsAttributeValue implements Serializable {
    private Long id;

    private Long goodsId;

    private Long goodsAttributeId;

    /**
     * 手动添加规格或参数的值，参数单值，规格有多个时以逗号隔开
     */
    private String value;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public Long getGoodsAttributeId() {
        return goodsAttributeId;
    }

    public void setGoodsAttributeId(Long goodsAttributeId) {
        this.goodsAttributeId = goodsAttributeId;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}