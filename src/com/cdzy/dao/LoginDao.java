package com.cdzy.dao;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.cdzy.pojo.User;
@Repository
public interface LoginDao {
	@Select("select * from tb_user where stu_code=#{stu_code} and password=#{password}")
User findByNameAndPwd(@Param("stu_code")String stu_code,@Param("password")String passWord);
	@Insert("INSERT tb_user(id,name,stu_code,passWord,role_id) values(0,#{name},#{stu_code},#{passWord},#{role_id})")
	int insertnumber(User user);
}
