package com.ohgiraffers.model.dto;

import java.sql.Date;

public class CommodityDTO {

    private int commodityCode;
    private String commodityTitle;
    private int commodityTypeCode;
    private java.sql.Date saleDate;
    private int salePrice;

    public CommodityDTO() {}

    public CommodityDTO(int commodityCode, String commodityTitle, int commodityTypeCode, Date saleDate, int salePrice) {
        this.commodityCode = commodityCode;
        this.commodityTitle = commodityTitle;
        this.commodityTypeCode = commodityTypeCode;
        this.saleDate = saleDate;
        this.salePrice = salePrice;
    }

    public int getCommodityCode() {
        return commodityCode;
    }

    public void setCommodityCode(int commodityCode) {
        this.commodityCode = commodityCode;
    }

    public String getCommodityTitle() {
        return commodityTitle;
    }

    public void setCommodityTitle(String commodityTitle) {
        this.commodityTitle = commodityTitle;
    }

    public int getCommodityTypeCode() {
        return commodityTypeCode;
    }

    public void setCommodityTypeCode(int commodityTypeCode) {
        this.commodityTypeCode = commodityTypeCode;
    }

    public Date getSaleDate() {
        return saleDate;
    }

    public void setSaleDate(Date saleDate) {
        this.saleDate = saleDate;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
    }

    @Override
    public String toString() {
        return "CommodityDTO{" +
                "commodityCode=" + commodityCode +
                ", commodityTitle='" + commodityTitle + '\'' +
                ", commodityTypeCode=" + commodityTypeCode +
                ", saleDate=" + saleDate +
                ", salePrice=" + salePrice +
                '}';
    }
}






