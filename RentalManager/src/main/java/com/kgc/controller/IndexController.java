package com.kgc.controller;

import com.kgc.pojo.CredentialType;
import com.kgc.pojo.Customers;
import com.kgc.service.IndexService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
public class IndexController {
    @Resource
    IndexService indexService;
    @RequestMapping("/")
    public String index (Model model){
        List<Customers> customers = indexService.selectList();
        model.addAttribute("list",customers);
        return "index";
    }
    @RequestMapping("/toadd")
    public String toadd(Model model){
        List<CredentialType> credentialTypes = indexService.selectAll();
        model.addAttribute("list",credentialTypes);
        return "add";
    }
    @RequestMapping("/add")
    public String add(Customers customers){
        customers.setAddtime(new Date());
        indexService.add(customers);
        return "redirect:/";
    }
    @RequestMapping("/del")
    public String del(int id){
        indexService.del(id);
        return "redirect:/";
    }
}
