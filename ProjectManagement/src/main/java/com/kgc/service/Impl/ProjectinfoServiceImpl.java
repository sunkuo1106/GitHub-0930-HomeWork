package com.kgc.service.Impl;

import com.kgc.mapper.ProjectinfoMapper;
import com.kgc.pojo.Projectinfo;
import com.kgc.pojo.ProjectinfoExample;
import com.kgc.service.ProjectinfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProjectinfoServiceImpl implements ProjectinfoService {
    @Resource
    ProjectinfoMapper projectinfoMapper;
    @Override
    public List<Projectinfo> selectAll(Integer status) {
        ProjectinfoExample example=new ProjectinfoExample();
        ProjectinfoExample.Criteria criteria = example.createCriteria();
        if(status!=3){
            criteria.andStatusEqualTo(status);
        }else{
            return projectinfoMapper.selectByExample(null);
        }
        return projectinfoMapper.selectByExample(example);
    }

    @Override
    public void update(Projectinfo projectinfo) {
        projectinfoMapper.updateByPrimaryKeySelective(projectinfo);
    }

    @Override
    public Projectinfo selectById(Integer id) {
        Projectinfo projectinfo = projectinfoMapper.selectByPrimaryKey(id);
        return projectinfo;
    }
}
