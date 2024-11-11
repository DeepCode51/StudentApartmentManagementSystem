package com.cdzy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;


import com.cdzy.pojo.User;

@Repository
public interface AdminDao {
	@Select("select * from tb_user where role_id=1")
    List<User> findAdmin(User user);	
	@Delete("delete from tb_user where id=#{id}")
	int deleteAdmin(Integer id);
	@Insert("insert into tb_user(id,name,sex,tel,stu_code,passWord,dormBuildId,role_id) values(0,#{name},#{sex},#{tel},#{stu_code},#{passWord},#{dormBuildId},#{role_id})")
	int insertAdmin(User user);
	@Select("select * from tb_user where id=#{id}")
	User findAdminById(Integer id);
	@Update("update tb_user set name=#{name},sex=#{sex},tel=#{tel},dormBuildId=#{dormBuildId} where id=#{id}")
	int updateAdmin(User user);
	
	//Ä£ºý²éÑ¯
	@Select("select * from tb_user where dormBuildId like '%${dormBuildId}%' and role_id=1")
	List<User> selectuserDorm(@Param("dormBuildId")String dormBuildId);
}
