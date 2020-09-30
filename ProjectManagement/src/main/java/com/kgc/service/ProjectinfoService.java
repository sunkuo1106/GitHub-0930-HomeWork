package com.kgc.service;

import com.kgc.pojo.Projectinfo;

import java.util.List;

public interface ProjectinfoService {
    List<Projectinfo>selectAll(Integer status);
    void update(Projectinfo projectinfo);

    Projectinfo selectById(Integer id);
}
