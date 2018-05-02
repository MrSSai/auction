package com.auction.service;

import com.auction.model.Account;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

public interface AccountService {

    int insert(Account account);

    boolean isExist(String mobile);

    List<Account> getAllUser();

    int login(Map<String, Object> map);

    List<Account> selectUuid(String mobile);

    int updateinfo(Map<String, Object> map);

    List<Account> getPerson(String uuid);

}
