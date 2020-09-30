package com.kgc.service.impl;

import com.kgc.mapper.StudentInfoMapper;
import com.kgc.pojo.StudentInfo;
import com.kgc.service.StudentInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("studentInfoService")
public class StudentInfoServiceImpl implements StudentInfoService {
    @Resource
    StudentInfoMapper studentInfoMapper;
    @Override
    public List<StudentInfo> selectAll() {
        List<StudentInfo> studentInfos = studentInfoMapper.selectByExample(null);
        return studentInfos;
    }

    @Override
    public StudentInfo selectById(int id) {
        StudentInfo studentInfo = studentInfoMapper.selectByPrimaryKey(id);
        return studentInfo;
    }

    @Override
    public int update(StudentInfo studentInfo) {
        int i = studentInfoMapper.updateByPrimaryKeySelective(studentInfo);
        return i;
    }
}
