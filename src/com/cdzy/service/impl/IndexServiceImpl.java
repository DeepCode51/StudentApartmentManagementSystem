package com.cdzy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdzy.dao.IndexDao;
import com.cdzy.pojo.Dormbuild;
import com.cdzy.pojo.User;
import com.cdzy.service.IndexService;

@Service(value = "IndexService")
public class IndexServiceImpl implements IndexService{
@Autowired
IndexDao indexDao;
	@Override
	public List<Dormbuild> findAll(Dormbuild dormbuild) {
		// TODO Auto-generated method stub
		return indexDao.findAll(dormbuild);
	}
	@Override
	public int deleteDormbuild(Integer id) {
		// TODO Auto-generated method stub
		return indexDao.deleteDormbuild(id);
	}
	@Override
	public int insertDormbuild(Dormbuild dormbuild) {
		// TODO Auto-generated method stub
		return indexDao.insertDormbuild(dormbuild);
	}
	@Override
	public Dormbuild findByIdUpdateDormbuild(Integer id) {
		// TODO Auto-generated method stub
		return indexDao.findByIdUpdateDormbuild(id);
	}
	@Override
	public boolean updateDormbuild(Dormbuild dormbuild) {
		// TODO Auto-generated method stub
		return indexDao.updateDormbuild(dormbuild);
	}
	@Override
	public int updatePwd(User user) {
		// TODO Auto-generated method stub
		return indexDao.updatePwd(user);
	}
	@Override
	public List<Dormbuild> selectdormbuid(String remark) {
		// TODO Auto-generated method stub
		return indexDao.selectdormbuid(remark);
	}
	

}
