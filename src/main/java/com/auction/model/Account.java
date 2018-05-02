package com.auction.model;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Account {
    private Long id;

    private String uuid;

    private String passwd;

    private String address;

    private String mobile;

    private String email;

    private String nickname;

    private Integer state;

    private Integer isdelete;

    private String name;

    private Integer who;
}