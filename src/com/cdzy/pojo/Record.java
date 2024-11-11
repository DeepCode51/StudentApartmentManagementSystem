package com.cdzy.pojo;

import java.util.Date;

public class Record {
private Integer id;
private String Student_name;
private String date;
private String remark;
private Integer disabled;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getStudent_name() {
	return Student_name;
}
public void setStudent_name(String student_name) {
	Student_name = student_name;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getRemark() {
	return remark;
}
public void setRemark(String remark) {
	this.remark = remark;
}
public Integer getDisabled() {
	return disabled;
}
public void setDisabled(Integer disabled) {
	this.disabled = disabled;
}
public Record(Integer id, String student_name, String date, String remark, Integer disabled) {
	super();
	this.id = id;
	Student_name = student_name;
	this.date = date;
	this.remark = remark;
	this.disabled = disabled;
}
public Record() {
	super();
}
@Override
public String toString() {
	return "Record [id=" + id + ", Student_name=" + Student_name + ", date=" + date + ", remark=" + remark
			+ ", disabled=" + disabled + "]";
}

}
