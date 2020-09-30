package com.kgc.service;

import com.kgc.pojo.Person;

import java.util.List;

public interface PersonService {
    List<Person>selectAll();

    void del(Integer id);

    void add(Person person);
}
