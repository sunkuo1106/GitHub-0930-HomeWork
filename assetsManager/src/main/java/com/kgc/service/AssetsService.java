package com.kgc.service;

import com.kgc.pojo.Assets;

import java.util.List;

public interface AssetsService {
    List<Assets>selectAll(String assetId,String assetType);
    void add(Assets assets);
}
