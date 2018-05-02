package com.auction.service.imp;

import com.auction.dao.AccountDao;
import com.auction.model.Account;
import com.auction.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    AccountDao accountDao;

    @Override
    public int insert(Account account) {
        return accountDao.insert(account);
    }

    @Override
    public boolean isExist(String mobile) {
        String res = accountDao.isExist(mobile);
        if (res == null) {
            return false;
        }
        return true;
    }

    @Override
    public List<Account> getAllUser() {
        return accountDao.getAllUser();
    }

    @Override
    public int login(Map<String, Object> map) {
        String res = accountDao.loginCheck(map);
        if (res != null) {
            return 1;
        }
        return 0;
    }

    @Override
    public List<Account> selectUuid(String mobile) {
        return accountDao.selectUuid(mobile);
    }

    @Override
    public int updateinfo(Map<String, Object> map) {
        return accountDao.updateinfo(map);
    }

    @Override
    public List<Account> getPerson(String uuid) {
        return accountDao.getPerson(uuid);
    }
}
