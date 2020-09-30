package com.kgc.pojo;

import java.util.Date;

public class Customers {
    private Integer id;

    private String name;

    private Integer age;

    private Integer sex;

    private Integer credentialtypeid;

    private String idnumber;

    private Date addtime;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getCredentialtypeid() {
        return credentialtypeid;
    }

    public void setCredentialtypeid(Integer credentialtypeid) {
        this.credentialtypeid = credentialtypeid;
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber == null ? null : idnumber.trim();
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }
}