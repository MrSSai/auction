package com.auction.dao;

import com.auction.model.Account;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface AccountDao {
    int insert(Account record);

    String isExist(@Param("pd") String mobile);

    List<Account> getAllUser();

    String loginCheck(@Param("pd") Map<String, Object> map);

    List<Account> selectUuid(@Param("pd") String mobile);

    int updateinfo(@Param("pd") Map<String, Object> map);

    List<Account> getPerson(@Param("uuid") String uuid);

}