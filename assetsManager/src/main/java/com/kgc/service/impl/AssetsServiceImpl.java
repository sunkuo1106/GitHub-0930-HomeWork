package com.kgc.service.impl;

import com.kgc.mapper.AssetsMapper;
import com.kgc.pojo.Assets;
import com.kgc.pojo.AssetsExample;
import com.kgc.service.AssetsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class AssetsServiceImpl implements AssetsService {
    @Resource
    AssetsMapper assetsMapper;
    @Override
    public List<Assets> selectAll(String assetId, String assetType) {
        AssetsExample example=new AssetsExample();
        AssetsExample.Criteria criteria = example.createCriteria();
        if(assetId!=null){
            criteria.andAssetidLike("%"+assetId+"%");
        }else if(assetType!=null&&assetType.equals("0")==false){
            if(assetType.equals("1")){
                assetType="电子设备";
            }else if(assetType.equals("2")){
                assetType="机械设备";
            }else{
                assetType="运输设备";
            }
            criteria.andAssettypeEqualTo(assetType);
        }else{
            return assetsMapper.selectByExample(null);
        }
        return assetsMapper.selectByExample(example);
    }

    @Override
    public void add(Assets assets) {
        assetsMapper.insertSelective(assets);
    }
}
