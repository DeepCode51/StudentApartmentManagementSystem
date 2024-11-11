package com.cdzy.pojo;

import java.util.List;

public class User {
private Integer id;
private String name;
private String passWord;
private String stu_code;
private String sex;
private String tel;
private String dormBuildId;//学生所住宿舍楼id
private String dorm_Code;//宿舍号码
private Integer role_id;//角色id 0超级管理员 1宿舍管理员 2学生
private Integer disabled ;
private Integer create_user_id;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassWord() {
	return passWord;
}
public void setPassWord(String passWord) {
	this.passWord = passWord;
}
public String getStu_code() {
	return stu_code;
}
public void setStu_code(String stu_code) {
	this.stu_code = stu_code;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getDormBuildId() {
	return dormBuildId;
}
public void setDormBuildId(String dormBuildId) {
	this.dormBuildId = dormBuildId;
}
public String getDorm_Code() {
	return dorm_Code;
}
public void setDorm_Code(String dorm_Code) {
	this.dorm_Code = dorm_Code;
}
public Integer getRole_id() {
	return role_id;
}
public void setRole_id(Integer role_id) {
	this.role_id = role_id;
}
public Integer getDisabled() {
	return disabled;
}
public void setDisabled(Integer disabled) {
	this.disabled = disabled;
}
public Integer getCreate_user_id() {
	return create_user_id;
}
public void setCreate_user_id(Integer create_user_id) {
	this.create_user_id = create_user_id;
}
public User(Integer id, String name, String passWord, String stu_code, String sex, String tel, String dormBuildId,
		String dorm_Code, Integer role_id, Integer disabled, Integer create_user_id) {
	super();
	this.id = id;
	this.name = name;
	this.passWord = passWord;
	this.stu_code = stu_code;
	this.sex = sex;
	this.tel = tel;
	this.dormBuildId = dormBuildId;
	this.dorm_Code = dorm_Code;
	this.role_id = role_id;
	this.disabled = disabled;
	this.create_user_id = create_user_id;
}
public User() {
	super();
}
@Override
public String toString() {
	return "User [id=" + id + ", name=" + name + ", passWord=" + passWord + ", stu_code=" + stu_code + ", sex=" + sex
			+ ", tel=" + tel + ", dormBuildId=" + dormBuildId + ", dorm_Code=" + dorm_Code + ", role_id=" + role_id
			+ ", disabled=" + disabled + ", create_user_id=" + create_user_id + "]";
}



}
