package com.cdzy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdzy.dao.LoginDao;
import com.cdzy.pojo.User;
import com.cdzy.service.LoginService;
@Service(value = "LoginService")
public class LoginServiceImpl implements LoginService{
@Autowired
LoginDao loginDao;

@Override
public User findByNameAndPwd(String stu_code, String passWord) {
	// TODO Auto-generated method stub
	return loginDao.findByNameAndPwd(stu_code, passWord);
}

@Override
public int insertnumber(User user) {
	// TODO Auto-generated method stub
	return loginDao.insertnumber(user);
}


	

}
