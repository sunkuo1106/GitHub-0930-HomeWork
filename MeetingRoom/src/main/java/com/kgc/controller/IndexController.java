package com.kgc.controller;

import com.kgc.pojo.Meetingroom;
import com.kgc.service.MeetingroomService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class IndexController {
    @Resource
    MeetingroomService meetingroomService;

    @RequestMapping("/")
    public String chu(Model model){
        List<Meetingroom> meetingrooms = meetingroomService.selectAll();
        model.addAttribute("meetingrooms",meetingrooms);
        return "index";
    }

    @RequestMapping("/add")
    public String add(Model model,Meetingroom meetingroom){
        int insert = meetingroomService.insert(meetingroom);
        System.out.println("插入:"+insert);
        return "redirect:/";
    }
}
