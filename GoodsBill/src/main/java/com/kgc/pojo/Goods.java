package com.kgc.pojo;

import java.util.Date;

public class Goods {
    private Integer id;

    private String goodsname;

    private Integer billstatus;

    private Integer goodsdistrict;

    private Float goodsprice;

    private Integer goodscount;

    private Date creationtime;

    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", goodsname='" + goodsname + '\'' +
                ", billstatus=" + billstatus +
                ", goodsdistrict=" + goodsdistrict +
                ", goodsprice=" + goodsprice +
                ", goodscount=" + goodscount +
                ", creationtime=" + creationtime +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname == null ? null : goodsname.trim();
    }

    public Integer getBillstatus() {
        return billstatus;
    }

    public void setBillstatus(Integer billstatus) {
        this.billstatus = billstatus;
    }

    public Integer getGoodsdistrict() {
        return goodsdistrict;
    }

    public void setGoodsdistrict(Integer goodsdistrict) {
        this.goodsdistrict = goodsdistrict;
    }

    public Float getGoodsprice() {
        return goodsprice;
    }

    public void setGoodsprice(Float goodsprice) {
        this.goodsprice = goodsprice;
    }

    public Integer getGoodscount() {
        return goodscount;
    }

    public void setGoodscount(Integer goodscount) {
        this.goodscount = goodscount;
    }

    public Date getCreationtime() {
        return creationtime;
    }

    public void setCreationtime(Date creationtime) {
        this.creationtime = creationtime;
    }
}