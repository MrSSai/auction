package com.auction.model;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Setter
@Getter
public class Ware {
    private Long id;

    private String uuid;

    private Date createtime;

    private String create;

    private String identifier;

    private String commodity;

    private Integer category;

    private String image;

    private String intro;

    private Float price;

    private Float transaction;

    private Integer state;

    private String buyerBuff;

    private String buyUuid;

    private String buyMobile;

    private Date endtime;

}