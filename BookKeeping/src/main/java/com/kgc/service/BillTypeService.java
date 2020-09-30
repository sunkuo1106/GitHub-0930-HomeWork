package com.kgc.service;

import com.kgc.pojo.BillType;

import java.util.List;

public interface BillTypeService {
    List<BillType> selectById(int id);
    List<BillType> selectAll();
}
