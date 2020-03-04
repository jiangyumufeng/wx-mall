package com.jiangyf.model.goods;

import java.io.Serializable;

/**
 * mall_goods
 * @author 
 */
public class MallGoodsWithBLOBs extends MallGoods implements Serializable {
    /**
     * 商品描述
     */
    private String description;

    /**
     * 商品详细介绍，是富文本格式
     */
    private String detail;

    private static final long serialVersionUID = 1L;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
}