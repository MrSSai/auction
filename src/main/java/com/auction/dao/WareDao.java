package com.auction.dao;

import com.auction.model.Ware;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface WareDao {

    int insert(Ware record);

    List<Ware> getAllWare(@Param("pd") Map<String, Object> pd);

    List<Ware> getAllWareInfo();

    int updateTransaction(@Param("pd") Map<String, Object> map);

    List<Ware> getMyWare(@Param("pd") Map<String, Object> pd);
}