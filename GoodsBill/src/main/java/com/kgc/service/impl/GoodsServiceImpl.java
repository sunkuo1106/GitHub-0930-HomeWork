package com.kgc.service.impl;

import com.kgc.mapper.GoodsMapper;
import com.kgc.pojo.Goods;
import com.kgc.pojo.GoodsExample;
import com.kgc.service.GoodsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
    @Resource
    GoodsMapper goodsMapper;
    @Override
    public List<Goods> selectAll() {
        List<Goods> goods = goodsMapper.selectByExample(null);
        return goods;
    }

    @Override
    public List<Goods> selectByGoodsDistrict(int id) {
        GoodsExample example=new GoodsExample();
        GoodsExample.Criteria criteria = example.createCriteria();
        criteria.andGoodsdistrictEqualTo(id);
        List<Goods> goods = goodsMapper.selectByExample(example);
        return goods;
    }

    @Override
    public Goods selectByPrimaryKey(int id) {
        Goods goods = goodsMapper.selectByPrimaryKey(id);
        return goods;
    }

    @Override
    public int update(Goods goods) {
        int i = goodsMapper.updateByPrimaryKeySelective(goods);
        return i;
    }
}
