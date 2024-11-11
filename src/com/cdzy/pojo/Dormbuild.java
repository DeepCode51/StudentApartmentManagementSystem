package com.cdzy.pojo;

public class Dormbuild {
private Integer id;
private String name;
private String remark;
private Integer disabled;
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
public Dormbuild(Integer id, String name, String remark, Integer disabled) {
	super();
	this.id = id;
	this.name = name;
	this.remark = remark;
	this.disabled = disabled;
}
public Dormbuild() {
	super();
}
@Override
public String toString() {
	return "Dormbuild [id=" + id + ", name=" + name + ", remark=" + remark + ", disabled=" + disabled + "]";
}

}
