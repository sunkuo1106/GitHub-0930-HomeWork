package com.kgc.service;

import com.kgc.pojo.StudentInfo;

import java.util.List;

public interface StudentInfoService {
    List<StudentInfo> selectAll();
    StudentInfo selectById(int id);
    int update(StudentInfo studentInfo);
}
