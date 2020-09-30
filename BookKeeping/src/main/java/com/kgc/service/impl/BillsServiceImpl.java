package com.kgc.service.impl;

import com.kgc.mapper.BillsMapper;
import com.kgc.pojo.BillType;
import com.kgc.pojo.Bills;
import com.kgc.pojo.BillsExample;
import com.kgc.service.BillTypeService;
import com.kgc.service.BillsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service("billsService")
public class BillsServiceImpl implements BillsService {
    @Resource
    BillsMapper billsMapper;
    @Resource
    BillTypeService billTypeService;
    @Override
    public List<Bills> selectAll() {
        List<Bills> bills = billsMapper.selectByExample(null);
        for(int i=0;i<bills.size();i++){
            List<BillType> billTypes = billTypeService.selectById(bills.get(i).getTypeId());
            bills.get(i).setBillType((BillType) billTypes.get(0));
        }
        return bills;
    }

    @Override
    public List<Bills> selectMoCha(int lei, Date yishi, Date ershi) {
        BillsExample example=new BillsExample();
        BillsExample.Criteria criteria = example.createCriteria();
        if(lei!=-1){
            criteria.andTypeIdEqualTo(lei);
        }
        if(yishi!=null&&ershi!=null){
            criteria.andBillTimeGreaterThan(yishi);
            criteria.andBillTimeLessThan(ershi);
            //criteria.andBillTimeBetween(yishi,ershi);
        }
        List<Bills> bills = billsMapper.selectByExample(example);
        for(int i=0;i<bills.size();i++){
            List<BillType> billTypes = billTypeService.selectById(bills.get(i).getTypeId());
            bills.get(i).setBillType((BillType) billTypes.get(0));
        }
        return bills;
    }

    @Override
    public int insert(Bills bills) {
        int i = billsMapper.insertSelective(bills);
        return i;
    }


}
