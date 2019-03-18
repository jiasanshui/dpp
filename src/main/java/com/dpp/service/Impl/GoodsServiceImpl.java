package com.dpp.service.Impl;

import com.dpp.dao.GoodsDao;
import com.dpp.entity.Goods;
import com.dpp.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;
import java.util.Map;


@Controller
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsDao goodsDao;

    /**
     * 查询所有商品
     * @return
     */
    @Override
    public List<Goods> getAllGoods(Map map) {
        //判断价格范围
        if("1".equals(map.get("pr"))){
            map.put("startPrice",0);
            map.put("endPrice",100);
        }if("2".equals(map.get("pr"))){
            map.put("startPrice",100);
            map.put("endPrice",200);
        }if("3".equals(map.get("pr"))){
            map.put("startPrice",200);
            map.put("endPrice",300);
        }if("4".equals(map.get("pr"))){
            map.put("startPrice",300);
            map.put("endPrice",400);
        }if("5".equals(map.get("pr"))){
            map.put("startPrice",400);
            map.put("endPrice",1000000);
        }
        List<Goods> allGoods = goodsDao.getAllGoods(map);
        return allGoods;
    }
}
