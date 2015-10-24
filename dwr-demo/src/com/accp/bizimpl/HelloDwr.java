package com.accp.bizimpl;

import java.util.ArrayList;
import java.util.List;

import com.entity.Student;

public class HelloDwr {

    public String hello(String name) {
        return "hello" + name;
    }

    public List getAll() {
        List list = new ArrayList();
        Student stu1 = new Student();
        stu1.setAge(20);
        stu1.setName("accp1");
        Student stu2 = new Student();
        stu2.setAge(22);
        stu2.setName("accp2");
        Student stu3 = new Student();
        stu3.setAge(26);
        stu3.setName("accp3");
        list.add(stu1);
        list.add(stu2);
        list.add(stu3);

        return list;
    }

    public List getAlls(String name) {
        // String hql = " select user.uname from TblUser
        // as user where user.uname like'"+key+"%'";
        List list = new ArrayList();

        list.add("stu1");
        list.add("stu2");
        list.add("stu3");

        return list;
    }

}
