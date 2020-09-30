package com.kgc.controller;

import com.kgc.pojo.BillType;
import com.kgc.pojo.Bills;
import com.kgc.service.BillTypeService;
import com.kgc.service.BillsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
public class IndexController {
    @Resource
    BillsService billsService;
    @Resource
    BillTypeService billTypeService;

    @RequestMapping("/")
    public String chu(Model model) {
        List<Bills> bills = billsService.selectAll();
        List<BillType> billTypes = billTypeService.selectAll();
        model.addAttribute("billTypes", billTypes);
        model.addAttribute("bills", bills);
        System.out.println(bills.toString());
        return "index";
    }

    @RequestMapping("/mocha")
    public String mocha(int lei, Date yishi, Date ershi, Model model) {
        List<Bills> bills = billsService.selectMoCha(lei, yishi, ershi);
        List<BillType> billTypes = billTypeService.selectAll();
        model.addAttribute("billTypes", billTypes);
        model.addAttribute("bills", bills);
        return "index";
    }

    @RequestMapping("/add")
    public String add(Model model){
        System.out.println("进入add");
        List<BillType> billTypes = billTypeService.selectAll();
        System.out.println(billTypes.toString());
        model.addAttribute("billTypes", billTypes);
        return "add";
    }

    @RequestMapping("/addOver")
    public String addOver(Bills bills,Model model){
        int insert = billsService.insert(bills);
        System.out.println("天街："+insert);
        List<Bills> billss = billsService.selectAll();
        List<BillType> billTypes = billTypeService.selectAll();
        model.addAttribute("billTypes", billTypes);
        model.addAttribute("bills", billss);
        return "index";
    }
}
