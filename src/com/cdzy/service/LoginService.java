package com.cdzy.service;

import org.springframework.stereotype.Repository;

import com.cdzy.pojo.User;

@Repository
public interface LoginService {
	User findByNameAndPwd(String stu_code,String passWord);
	int insertnumber(User user);
}
