package com.kgc.service;

import com.kgc.pojo.CredentialType;
import com.kgc.pojo.Customers;

import java.util.List;

public interface IndexService {
    List<CredentialType>selectAll();
    List<Customers>selectList();
    void add(Customers customers);

    void del(int id);
}
