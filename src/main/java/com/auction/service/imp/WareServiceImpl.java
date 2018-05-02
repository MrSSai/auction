package com.auction.service.imp;

import com.auction.dao.WareDao;
import com.auction.model.Ware;
import com.auction.service.WareService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class WareServiceImpl implements WareService {
    @Autowired
    WareDao wareDao;

    @Override
    public int insert(Ware ware) {
        return wareDao.insert(ware);
    }

    @Override
    public List<Ware> getAllWare(Map pd) {
        return wareDao.getAllWare(pd);
    }

    @Override
    public List<Ware> getAllWareInfo() {
        return wareDao.getAllWareInfo();
    }

    @Override
    public int updateTransaction(Map map) {
        return wareDao.updateTransaction(map);
    }

    @Override
    public List<Ware> getMyWare(Map pd) {
        return wareDao.getMyWare(pd);
    }
}
