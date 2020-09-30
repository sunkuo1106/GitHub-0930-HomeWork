package com.kgc.controller;

import com.kgc.pojo.Assets;
import com.kgc.service.AssetsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class AssetsController {
    @Resource
    AssetsService assetsService;
    @RequestMapping("/")
    public String index(Model model,String assetid, String assettype){
        System.out.println(assetid);
        System.out.println(assettype);
        if(assetid==""){
            assetid=null;
        }
        List<Assets> assets = assetsService.selectAll(assetid, assettype);
        model.addAttribute("list",assets);
        return "index";
    }
    @RequestMapping("/add")
    public String add(Assets assets){
        if(assets.getAssettype().equals("1")){
            assets.setAssettype("电子设备");
        }else if(assets.getAssettype().equals("2")){
            assets.setAssettype("机械设备");
        }else{
            assets.setAssettype("运输设备");
        }
        assetsService.add(assets);
        return "redirect:/";
    }
}
