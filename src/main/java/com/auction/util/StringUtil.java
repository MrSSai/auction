package com.auction.util;

import com.sun.jmx.snmp.Timestamp;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import java.util.UUID;

public class StringUtil {
    /**
     * 获得一个uuid
     *
     * @return uuid
     */
    public static String getUUID() {
        String uuid = UUID.randomUUID().toString();
        return uuid.replaceAll("-", "");
    }

    /**
     * 生成32位md5码
     *
     * @param password
     * @return
     */
    public static String md5Password(String password) {

        try {
            // 得到一个信息摘要器
            MessageDigest digest = MessageDigest.getInstance("md5");
            byte[] result = digest.digest(password.getBytes());
            StringBuffer buffer = new StringBuffer();
            // 把每一个byte 做一个与运算 0xff;
            for (byte b : result) {
                // 与运算
                int number = b & 0xff;// 加盐
                String str = Integer.toHexString(number);
                if (str.length() == 1) {
                    buffer.append("0");
                }
                buffer.append(str);
            }

            // 标准的md5加密后的结果
            return buffer.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }

    }

    /**
     * 获取当前时间
     *
     * @return datetime
     */
    public static Date getDate() {

        Date day = new Date();

        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String now = df.format(day);
        Date date = null;
        try {
            date = df.parse(now);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    /**
     * 获取两个时间差
     *
     * @param d1
     * @param d2
     * @return
     */
    public static long getDateCha(Date d1, Date d2) {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            long diff = d1.getTime() - d2.getTime();//这样得到的差值是微秒级别
            long days = diff / (1000 * 60 * 60 * 24);
            long hours = (diff - days * (1000 * 60 * 60 * 24)) / (1000 * 60 * 60);
            long minutes = (diff - days * (1000 * 60 * 60 * 24) - hours * (1000 * 60 * 60)) / (1000 * 60);
            return days + hours + minutes;
        } catch (Exception e) {
            return 0;
        }
    }

    /**
     * 获取当前时间的后一天
     *
     * @return
     */
    public static Date getAfterHour() {
        Calendar now = Calendar.getInstance();
        Date date = null;
        now.add(Calendar.MINUTE, 1440);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateStr = sdf.format(now.getTimeInMillis());
        try {
            date = sdf.parse(dateStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    /**
     * 获取第二天0点0分0秒
     *
     * @return
     */
    public static Date getZeroHour() {
        long current = System.currentTimeMillis();//当前时间毫秒数
        long zero = current / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//今天零点零分零秒的毫秒数
        long twelve = zero + 24 * 60 * 60 * 1000 - 1;//今天23点59分59秒的毫秒数
        return new Date(twelve);
    }

    /**
     * 比较两个时间大小
     *
     * @param dt2
     * @return
     */
    public static boolean compare_date(Date dt2) {
        Date dt1 = StringUtil.getDate();
        if (dt1.getTime() > dt2.getTime()) {
            System.out.println("dt1 在dt2前");
            return true;
        } else {
            return false;
        }
    }

    public static String getNo() {
        DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyyMMddHHmmssSSS");//设置日期格式
        String newsNo = "No" + LocalDateTime.now().format(fmt);
        return newsNo;
    }
}
