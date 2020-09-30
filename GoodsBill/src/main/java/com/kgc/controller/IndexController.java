package com.kgc.controller;

import com.kgc.pojo.Goods;
import com.kgc.service.GoodsService;
import com.sun.org.apache.bcel.internal.generic.MONITORENTER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.sound.midi.Soundbank;
import java.util.List;

@Controller
public class IndexController {
    @Resource
    GoodsService goodsService;

    @RequestMapping("/")
    public String chu(Model model){
        return "index";
    }

    @RequestMapping("/cha")
    public String cha(Model model,int quyu){
        List<Goods> goods = goodsService.selectByGoodsDistrict(quyu);
        model.addAttribute("goods",goods);
        return "cha";
    }

    @RequestMapping("update{id}")
    public String update(int id,Model model){
        Goods goods = goodsService.selectByPrimaryKey(id);
        model.addAttribute("goods",goods);
        model.addAttribute("id",id);
        return "update";
    }
    @RequestMapping("/updateOver")
    public String updateOver(Goods goods, Model model){
        System.out.println(goods.toString());
        int insert = goodsService.update(goods);
        System.out.println("更改："+insert);
        return "index";
    }
}
