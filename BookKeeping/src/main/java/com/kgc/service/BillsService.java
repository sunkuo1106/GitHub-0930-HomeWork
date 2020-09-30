package com.kgc.service;

import com.kgc.pojo.Bills;

import java.util.Date;
import java.util.List;

public interface BillsService {
    List<Bills> selectAll();
    List<Bills> selectMoCha(int lei, Date yishi, Date ershi);
    int insert(Bills bills);
}
