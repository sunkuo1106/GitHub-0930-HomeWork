package com.kgc.controller;

import com.kgc.pojo.Person;
import com.kgc.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class IndexController {
    @Resource
    PersonService personService;
    @RequestMapping("/")
    public String index(Model model){
        List<Person> peoples = personService.selectAll();
        model.addAttribute("list",peoples);
        return "index";
    }
    @RequestMapping("/del")
    public String del(Integer id){
        personService.del(id);
        return "redirect:/";
    }
    @RequestMapping("/add")
    public String add(Person person){
        personService.add(person);
        return "redirect:/";
    }
}
