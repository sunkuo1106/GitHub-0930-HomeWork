package com.kgc.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.pojo.Projectinfo;
import com.kgc.service.ProjectinfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ProjectinfoController {
    @Resource
    ProjectinfoService projectinfoService;
    @RequestMapping("/")
    public String index(Model model,String status,String pageNum){
        int statusi=3;
        int pageSize=3;
        int pagenum=1;
        if(pageNum!=null){
            pagenum=Integer.parseInt(pageNum);
        }
        if(status!=null){
            statusi=Integer.parseInt(status);
        }
        PageHelper.startPage(pagenum,pageSize);
        List<Projectinfo> projectinfos = projectinfoService.selectAll(statusi);
        PageInfo<Projectinfo>PageInfo=new PageInfo<>(projectinfos);
        model.addAttribute("PageInfo",PageInfo);
        return "index";
    }
    @RequestMapping("/toupd")
    public String toupd(Integer id,Model model){
        Projectinfo projectinfo=projectinfoService.selectById(id);
        System.out.println(id);
        model.addAttribute("projectinfo",projectinfo);
        return "upd";
    }
    @RequestMapping("/upd")
    public String upd(HttpSession session, Projectinfo projectinfo){
        projectinfoService.update(projectinfo);
        session.setAttribute("flag",true);
        return "redirect:/";
    }
}
