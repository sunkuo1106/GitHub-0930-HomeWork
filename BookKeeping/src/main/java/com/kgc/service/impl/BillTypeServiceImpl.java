package com.kgc.service.impl;

import com.kgc.mapper.BillTypeMapper;
import com.kgc.pojo.BillType;
import com.kgc.pojo.BillTypeExample;
import com.kgc.service.BillTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("billTypeService")
public class BillTypeServiceImpl implements BillTypeService {
    @Resource
    BillTypeMapper billTypeMapper;
    @Override
    public List<BillType> selectById(int id) {
        BillTypeExample example=new BillTypeExample();
        BillTypeExample.Criteria criteria = example.createCriteria();
        criteria.andIdEqualTo(id);
        List<BillType> billTypes = billTypeMapper.selectByExample(example);
        return billTypes;
    }

    @Override
    public List<BillType> selectAll() {
        List<BillType> billTypes = billTypeMapper.selectByExample(null);
        return billTypes;
    }
}
