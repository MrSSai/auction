package com.auction.controller.org;

import com.auction.model.Account;
import com.auction.model.Ware;
import com.auction.service.AccountService;
import com.auction.service.WareService;
import com.auction.util.FileUtil;
import com.auction.util.Result;
import com.auction.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@RestController
@RequestMapping("/ware")
public class WareController {
    @Autowired
    private WareService wareService;
    @Autowired
    private AccountService accountService;

    /**
     * 卖方添加商品信息
     * String create(登录用户的uuid)
     * String commodity
     * String price
     * String state
     * String category
     *
     * @param httpServletRequest
     * @return
     */
    @PostMapping("/add")
    public Object add(HttpServletRequest httpServletRequest) {
        String create = httpServletRequest.getParameter("create");
        String uuid = StringUtil.getUUID();
        String identifier = StringUtil.getNo();
        String commodity = httpServletRequest.getParameter("commodity");
        String category = httpServletRequest.getParameter("category");
        String intro  = httpServletRequest.getParameter("intro");
        String price = httpServletRequest.getParameter("price");
        String endtime = httpServletRequest.getParameter("endtime");

        String filePath = httpServletRequest.getParameter("filePath");

        Ware ware = new Ware();
        ware.setImage(filePath);
        ware.setCreate(create);
        ware.setUuid(uuid);
        ware.setCreatetime(new Date());
        ware.setIdentifier(identifier);
        ware.setCommodity(commodity);
        ware.setIntro(intro);
        ware.setBuyerBuff("");
        ware.setBuyMobile("");
        ware.setTransaction(Float.parseFloat(price));
        ware.setCategory(Integer.parseInt(category));
        ware.setPrice(Float.parseFloat(price));
        ware.setState(0);
        if ("1".equals(endtime)) {
            ware.setEndtime(StringUtil.getAfterHour());
        } else {
            ware.setEndtime(StringUtil.getZeroHour());
        }
        int res = wareService.insert(ware);
        if (res != 0) {
            Map<String, Object> m = new HashMap<String, Object>();
            m.put("code", 200);
            m.put("message", "添加成功");
            return Result.success(m);
        }
        Map<String, Object> map1 = new HashMap<String, Object>();
        map1.put("code", 500);
        map1.put("message", "添加失败，未知原因");
        return Result.error(map1);
    }

    @PostMapping("/addware")
    public Object addWare(HttpServletRequest httpServletRequest) {
        String create = httpServletRequest.getParameter("create");
        String uuid = StringUtil.getUUID();
        String identifier = StringUtil.getNo();
        String commodity = httpServletRequest.getParameter("commodity");
        String category = httpServletRequest.getParameter("category");
        String price = httpServletRequest.getParameter("price");
        String intro = httpServletRequest.getParameter("intro");
        String endtime = httpServletRequest.getParameter("endtime");

        List<MultipartFile> files = ((MultipartHttpServletRequest) httpServletRequest).getFiles("file");
        String imgs = FileUtil.handleFileUpload(files);

        Ware ware = new Ware();
        ware.setImage(imgs);
        ware.setCreate(create);
        ware.setUuid(uuid);
        ware.setCreatetime(new Date());
        ware.setIdentifier(identifier);
        ware.setCommodity(commodity);
        ware.setIntro(intro);
        ware.setTransaction(Float.parseFloat(price));
        ware.setCategory(Integer.parseInt(category));
        ware.setPrice(Float.parseFloat(price));
        ware.setState(0);
        if ("1".equals(endtime)) {
            ware.setEndtime(StringUtil.getAfterHour());
        } else {
            ware.setEndtime(StringUtil.getZeroHour());
        }
        int res = wareService.insert(ware);
        if (res != 0) {
            Map<String, Object> m = new HashMap<String, Object>();
            m.put("code", 200);
            m.put("message", "添加成功");
            return Result.success(m);
        }
        Map<String, Object> map1 = new HashMap<String, Object>();
        map1.put("code", 500);
        map1.put("message", "添加失败，未知原因");
        return Result.error(map1);
    }

    /**
     * String create
     * 卖方查看自己已发布的商品信息
     */
    @PostMapping("/getallware")
    public Object getAllWare(HttpServletRequest httpServletRequest) {
        Map<String, Object> pd = new HashMap<>();
        String uuid = httpServletRequest.getParameter("create");
        pd.put("create", uuid);
        List<Ware> list = wareService.getAllWare(pd);
        if (list.size() != 0) {
            return Result.success(list);
        }
        Map<String, Object> map1 = new HashMap<String, Object>();
        map1.put("code", 500);
        map1.put("message", "失败，参数错误");
        return Result.error(map1);

    }

    /**
     * 买方查看所有未被竞价的商品
     *
     * @return
     */
    @GetMapping("/getallwareinfo")
    public Object getAllWareInfo() {
        List<Ware> list = wareService.getAllWareInfo();
        return Result.success(list);
    }

    /**
     * 买方对某个商品进行竞价
     * String buy_uuid(买方uuid：当前登录用户的uuid)
     * String uuid(某商品uuid)
     *
     * @param
     * @return
     */
    @PostMapping("/bidd")
    public synchronized Object bidd(HttpServletRequest httpServletRequest) {
        String buy_uuid = httpServletRequest.getParameter("buy_uuid");  // 买方uuid
        String uuid = httpServletRequest.getParameter("uuid");
        Map<String, Object> map = new HashMap<>();
        Map<String, Object> map1 = new HashMap<>();
        map.put("uuid", uuid);
        List<Ware> list = wareService.getAllWare(map);
        List<Account> person = accountService.getPerson(buy_uuid);
        float transaction = (float) (list.get(0).getTransaction() * 1.05);   // 每次上调5%
        System.out.println(list.get(0).getEndtime());
        map.put("transaction", transaction);
        map.put("buyer_buff", list.get(0).getBuyerBuff() + buy_uuid + "/");
        map.put("buy_mobile", person.get(0).getMobile());
        map.put("buy_uuid", buy_uuid);
        int res = wareService.updateTransaction(map);
        map1.put("gmt_create", list.get(0).getCreatetime());
        map1.put("gmt_end", list.get(0).getEndtime());
        map1.put("result", res);
        return Result.success(map1);


    }

    /**
     * 买方查看自己已竞价成功的商品信息
     * String buy_uuid (当前登录用户uuid)
     */
    @PostMapping("/getmyware")
    public Object getMyWare(HttpServletRequest httpServletRequest) {
        Map<String, Object> pd = new HashMap<>();
        String buy_uuid = httpServletRequest.getParameter("buy_uuid");
        pd.put("buy_uuid", buy_uuid);
        List<Ware> list = wareService.getMyWare(pd);
        if (list.size() != 0) {
            return Result.success(list);
        }
        Map<String, Object> map1 = new HashMap<String, Object>();
        map1.put("code", 500);
        map1.put("message", "失败，参数错误");
        return Result.error(map1);
    }
}
