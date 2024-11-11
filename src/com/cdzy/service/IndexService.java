package com.cdzy.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import com.cdzy.pojo.Dormbuild;
import com.cdzy.pojo.User;
@Repository
public interface IndexService {
	//查询宿舍楼所有信息
	List<Dormbuild> findAll(Dormbuild dormbuild);
	//根据id删除宿舍楼相关信息
	int deleteDormbuild(Integer id);
	//在宿舍楼表插入相关信息
	int insertDormbuild(Dormbuild dormbuild);
	//根据id跳转到修改页面
	Dormbuild findByIdUpdateDormbuild(Integer id);
	//修改宿舍楼表相关信息
	boolean updateDormbuild(Dormbuild dormbuild);
	
	int updatePwd(User user);
	
	List<Dormbuild> selectdormbuid(@PathVariable("remark")String remark);
}
