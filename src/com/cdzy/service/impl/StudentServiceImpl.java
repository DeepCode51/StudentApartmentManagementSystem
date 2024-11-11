package com.cdzy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdzy.dao.StudentDao;
import com.cdzy.pojo.User;
import com.cdzy.service.StudentService;

@Service(value="StudentService")
public class StudentServiceImpl implements StudentService{
@Autowired
StudentDao studentDao;
	@Override
	public List<User> findAllStudent(User user) {
		// TODO Auto-generated method stub
		return studentDao.findAllStudent(user);
	}
	@Override
	public int insertStudent(User user) {
		// TODO Auto-generated method stub
		return studentDao.insertStudent(user);
	}
	@Override
	public int deleteStudentById(Integer id) {
		// TODO Auto-generated method stub
		return studentDao.deleteStudentById(id);
	}
	@Override
	public User findStudentById(Integer id) {
		// TODO Auto-generated method stub
		return studentDao.findStudentById(id);
	}
	@Override
	public int UpdateStudent(User user) {
		// TODO Auto-generated method stub
		return studentDao.UpdateStudent(user);
	}
	@Override
	public List<User> selectuserDorm(String dormBuildId) {
		// TODO Auto-generated method stub
		return studentDao.selectuserDorm(dormBuildId);
	}
	

}
