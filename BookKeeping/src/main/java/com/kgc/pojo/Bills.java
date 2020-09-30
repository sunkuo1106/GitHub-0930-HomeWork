package com.kgc.pojo;

import java.util.Date;

public class Bills {
    private Integer id;

    private String title;

    private Date billTime;

    private Integer typeId;

    private Integer price;

    private String explainn;

    private BillType billType;

    @Override
    public String toString() {
        return "Bills{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", billTime=" + billTime +
                ", typeId=" + typeId +
                ", price=" + price +
                ", explainn='" + explainn + '\'' +
                ", billType=" + billType +
                '}';
    }

    public BillType getBillType() {
        return billType;
    }

    public void setBillType(BillType billType) {
        this.billType = billType;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getBillTime() {
        return billTime;
    }

    public void setBillTime(Date billTime) {
        this.billTime = billTime;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getExplainn() {
        return explainn;
    }

    public void setExplainn(String explainn) {
        this.explainn = explainn == null ? null : explainn.trim();
    }
}