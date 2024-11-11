package com.cdzy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdzy.dao.AdminDao;
import com.cdzy.pojo.Dormbuild;
import com.cdzy.pojo.User;
import com.cdzy.service.AdminService;

@Service(value = "AdminService")
public class AdminServiceImpl implements AdminService{
@Autowired
AdminDao adminDao;

@Override
public List<User> findAdmin(User user) {
	// TODO Auto-generated method stub
	return adminDao.findAdmin(user);
}

@Override
public int deleteAdmin(Integer id) {
	// TODO Auto-generated method stub
	return adminDao.deleteAdmin(id);
}

@Override
public int insertAdmin(User user) {
	// TODO Auto-generated method stub
	return adminDao.insertAdmin(user);
}

@Override
public User findAdminById(Integer id) {
	// TODO Auto-generated method stub
	return adminDao.findAdminById(id);
}

@Override
public int updateAdmin(User user) {
	// TODO Auto-generated method stub
	return adminDao.updateAdmin(user);
}

@Override
public List<User> selectuserDorm(String dormBuildId) {
	// TODO Auto-generated method stub
	return adminDao.selectuserDorm(dormBuildId);
}






	

}
