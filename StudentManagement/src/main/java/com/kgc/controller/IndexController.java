package com.kgc.controller;

import com.kgc.pojo.StudentInfo;
import com.kgc.service.StudentInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class IndexController {
    @Resource
    StudentInfoService studentInfoService;

    @RequestMapping("/")
    public String chu(Model model){
        List<StudentInfo> studentInfos =studentInfoService.selectAll();
        model.addAttribute("studentinfo",studentInfos);
        return "index";
    }

    @RequestMapping("/update{id}")
    public String update(int id,Model model){
        StudentInfo studentInfo = studentInfoService.selectById(id);
        model.addAttribute("studentInfo",studentInfo);
        return "update";
    }

    @RequestMapping("/updateOver")
    public String updateOver(StudentInfo studentInfo, HttpSession session,Model model){
        int update = studentInfoService.update(studentInfo);
        System.out.println("更改的结果:"+update);
        int jie=0;
        if(update>0){
            jie=1;
        }else{
            jie=-1;
        }
        session.setAttribute("jie",jie);
        List<StudentInfo> studentInfos =studentInfoService.selectAll();
        model.addAttribute("studentinfo",studentInfos);
        return "index";
    }
}
