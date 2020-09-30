package com.kgc.service.impl;

import com.kgc.mapper.PersonMapper;
import com.kgc.pojo.Person;
import com.kgc.pojo.PersonExample;
import com.kgc.service.PersonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {
    @Resource
    PersonMapper personMapper;

    @Override
    public List<Person> selectAll() {
        List<Person> people = personMapper.selectByExample(null);
        return people;
    }

    @Override
    public void del(Integer id) {
        personMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void add(Person person) {
        personMapper.insertSelective(person);
    }
}
