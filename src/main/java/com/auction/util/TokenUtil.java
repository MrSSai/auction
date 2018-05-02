package com.auction.util;

import java.util.Date;

public class TokenUtil {
    public static String getToken(String uuid) {
        Date date = StringUtil.getDate();
        String token = StringUtil.md5Password(uuid + date);
        return token;
    }
}
