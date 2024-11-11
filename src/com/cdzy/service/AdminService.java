package com.cdzy.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.cdzy.pojo.Dormbuild;
import com.cdzy.pojo.User;
@Repository
public interface AdminService {
	List<User> findAdmin(User user);
	int deleteAdmin(Integer id);
	int insertAdmin(User user);
	User findAdminById(Integer id);
	int updateAdmin(User user);
	List<User> selectuserDorm(@Param("dormBuildId")String dormBuildId);
}
