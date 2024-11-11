package com.cdzy.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.cdzy.pojo.User;

@Repository
public interface StudentService {
	List<User> findAllStudent(User user);
	int insertStudent(User user);
	int deleteStudentById(Integer id);
	User findStudentById(Integer id);
	int UpdateStudent(User user);
	List<User> selectuserDorm(@Param("dormBuildId")String dormBuildId);
}
