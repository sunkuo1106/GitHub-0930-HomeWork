package com.kgc.mapper;

import com.kgc.pojo.CredentialType;
import com.kgc.pojo.CredentialTypeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CredentialTypeMapper {
    int countByExample(CredentialTypeExample example);

    int deleteByExample(CredentialTypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CredentialType record);

    int insertSelective(CredentialType record);

    List<CredentialType> selectByExample(CredentialTypeExample example);

    CredentialType selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CredentialType record, @Param("example") CredentialTypeExample example);

    int updateByExample(@Param("record") CredentialType record, @Param("example") CredentialTypeExample example);

    int updateByPrimaryKeySelective(CredentialType record);

    int updateByPrimaryKey(CredentialType record);
}