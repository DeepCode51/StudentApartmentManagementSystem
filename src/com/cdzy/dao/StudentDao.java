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
public interface StudentDao {
@Select("select * from tb_user where role_id=2")
	List<User> findAllStudent(User user);
@Insert("INSERT tb_user(id,name,sex,tel,stu_code,passWord,dorm_Code,dormBuildId,role_id) VALUES (0,#{name},#{sex},#{tel},#{stu_code},#{passWord},#{dorm_Code},#{dormBuildId},#{role_id})")
int insertStudent(User user);
@Delete("delete from tb_user where id=#{id}")
int deleteStudentById(Integer id);
@Select("select * from tb_user where id=#{id}")
User findStudentById(Integer id);
@Update("update tb_user set name=#{name},sex=#{sex},tel=#{tel},dorm_Code=#{dorm_Code},dormBuildId=#{dormBuildId} where id=#{id}")
int UpdateStudent(User user);

//Ä£ºý²éÑ¯
	@Select("select * from tb_user where dormBuildId like '%${dormBuildId}%' and role_id=2")
	List<User> selectuserDorm(@Param("dormBuildId")String dormBuildId);
}
