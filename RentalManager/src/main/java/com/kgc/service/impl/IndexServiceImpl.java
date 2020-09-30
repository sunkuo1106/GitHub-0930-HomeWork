package com.kgc.service.impl;

import com.kgc.mapper.CredentialTypeMapper;
import com.kgc.mapper.CustomersMapper;
import com.kgc.pojo.CredentialType;
import com.kgc.pojo.CredentialTypeExample;
import com.kgc.pojo.Customers;
import com.kgc.service.IndexService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class IndexServiceImpl implements IndexService {
    @Resource
    CustomersMapper customersMapper;
    @Resource
    CredentialTypeMapper credentialTypeMapper;

    @Override
    public List<CredentialType> selectAll() {
        return credentialTypeMapper.selectByExample(null);
    }

    @Override
    public List<Customers> selectList() {
        List<Customers> customers = customersMapper.selectByExample(null);
//        CredentialTypeExample example=new CredentialTypeExample();
//        CredentialTypeExample.Criteria criteria = example.createCriteria();
//        for (int i = 0; i < customers.size(); i++) {
//            criteria.andIdEqualTo(customers.get(i).getCredentialtypeid());
//            List<CredentialType> credentialTypes = credentialTypeMapper.selectByExample(example);
//            for (CredentialType credentialType : credentialTypes) {
//                customers.get(i).setCredentialtype(credentialType.getName());
//            }
//        }
        return customers;
    }

    @Override
    public void add(Customers customers) {
        customersMapper.insertSelective(customers);
    }

    @Override
    public void del(int id) {
        customersMapper.deleteByPrimaryKey(id);
    }
}
