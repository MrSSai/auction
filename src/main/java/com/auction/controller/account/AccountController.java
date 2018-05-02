package com.auction.controller.account;


import com.auction.model.Account;
import com.auction.service.AccountService;
import com.auction.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/account")
public class AccountController {
    @Autowired
    private AccountService accountService;


    /**
     * String mobile
     * String passwd
     *
     * @param httpServletRequest
     * @return 当前登录用户的uuid
     */
    @PostMapping("/register")
    public Object register(HttpServletRequest httpServletRequest) {
        String mobile = httpServletRequest.getParameter("mobile");
        boolean result = accountService.isExist(mobile);
        if (result) {
            Map<String, Object> m = new HashMap<String, Object>();
            m.put("code", 505);
            m.put("message", "该手机号已被注册");
            return Result.error(m); // 改手机号已被注册
        }
        String pwd = httpServletRequest.getParameter("passwd");
        Integer state = Integer.parseInt(httpServletRequest.getParameter("state"));
        String uuid = StringUtil.getUUID();

        pwd = StringUtil.md5Password(pwd);
        Account account = new Account();
        account.setUuid(uuid);
        account.setMobile(mobile);
        account.setPasswd(pwd);
        account.setState(state);
        int res = accountService.insert(account);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("login-token", uuid);
        map.put("token", uuid);
        map.put("code", 200);
        map.put("message", "注册成功");
        if (res != 0) {
            return Result.success(map);
        }
        return Result.error(CodeMsg.SERVER_EXCEPTION); // 添加失败
    }

    /**
     * String mobile
     * String passwd
     *
     * @param httpServletRequest
     * @return 返回当前登录用户的uuid
     */
    @PostMapping("/login")
    public Object login(HttpServletRequest httpServletRequest) {
        String mobile = httpServletRequest.getParameter("mobile");
        String password = httpServletRequest.getParameter("passwd");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("mobile", mobile);
        map.put("passwd", StringUtil.md5Password(password));
        int res = accountService.login(map);
        if (res != 0) {
            List<Account> list = accountService.selectUuid(mobile);
            Map<String, Object> map1 = new HashMap<String, Object>();
            map1.put("code", 200);
            map1.put("login-token", list.get(0).getUuid());
            map1.put("token", list.get(0).getUuid());
            map1.put("state", list.get(0).getState());
            map1.put("message", "登录成功");
            return Result.success(map1);
        }
        Map<String, Object> map1 = new HashMap<String, Object>();
        map1.put("code", 500);
        map1.put("message", "密码错误");
        return Result.error(map1);
    }

    /**
     * String uuid
     * String address
     * String email
     * String nickname
     * String state(1:卖家，0：买家)
     * String name
     *
     * @param httpServletRequest
     * @return
     */
    @PostMapping("/adduserinfo")
    public Object add(HttpServletRequest httpServletRequest) {
        String uuid = httpServletRequest.getParameter("uuid");
        String address = httpServletRequest.getParameter("address");
        String email = httpServletRequest.getParameter("email");
        String nickname = httpServletRequest.getParameter("nickname");
        String name = httpServletRequest.getParameter("name");
        int state = Integer.parseInt(httpServletRequest.getParameter("state"));
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("uuid", uuid);
        map.put("address", address);
        map.put("email", email);
        map.put("nickname", nickname);
        map.put("name", name);
        map.put("state", state);
        map.put("isdelete", 0);
        int res = accountService.updateinfo(map);
        if (res != 0) {
            Map<String, Object> map1 = new HashMap<String, Object>();
            map1.put("code", 200);
            map1.put("message", "添加成功");
            return Result.success(map1);
        }
        return Result.error(CodeMsg.SERVER_EXCEPTION);
    }

    @PostMapping("/getperson")
    public Object getPerson(HttpServletRequest httpServletRequest) {
        String uuid = httpServletRequest.getParameter("uuid");
        List<Account> list = accountService.getPerson(uuid);
        if (list.size() != 0) {

            return Result.success(list);
        }
        Map<String, Object> map1 = new HashMap<String, Object>();
        map1.put("code", 500);
        map1.put("message", "密码错误");
        return Result.error(map1);
    }
}
