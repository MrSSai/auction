package com.auction.service;

import com.auction.model.Ware;

import java.util.List;
import java.util.Map;

public interface WareService {
    int insert(Ware ware);

    List<Ware> getAllWare(Map pd);

    List<Ware> getAllWareInfo();

    int updateTransaction(Map map);

    List<Ware> getMyWare(Map pd);
}
