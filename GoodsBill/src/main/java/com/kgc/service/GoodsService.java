package com.kgc.service;

import com.kgc.pojo.Goods;

import java.util.List;

public interface GoodsService {
    List<Goods> selectAll();
    List<Goods> selectByGoodsDistrict(int id);
    Goods selectByPrimaryKey(int id);
    int update(Goods goods);
}
