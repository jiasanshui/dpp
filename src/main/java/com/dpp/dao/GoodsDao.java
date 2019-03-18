package com.dpp.dao;

import com.dpp.entity.Goods;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface GoodsDao {

    /**
     * 查询所有商品
     * @return
     */
    @Select("<script>select * from goods where 1=1 " +
            "<if test=\"pr!=null and pr!=''\"> and price &gt;= #{startPrice} and price &lt;=#{endPrice}</if>" +
            "<if test=\"type!=null and type!=''\">and type=#{type}</if>" +
            "<if test=\"si!=null and si!=''\">and size=#{size}</if></script>")
    List<Goods> getAllGoods(Map map);
}
