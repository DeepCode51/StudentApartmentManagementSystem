package com.cdzy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdzy.dao.QueQDao;
import com.cdzy.pojo.Record;
import com.cdzy.service.QueQService;

@Service(value="QueQService")
public class QueQServiceImpl implements QueQService{
@Autowired
QueQDao queQDao;
	@Override
	public List<Record> findAll(Record record) {
		// TODO Auto-generated method stub
		return queQDao.findAll(record);
	}
	@Override
	public int DeleteRecord(Integer id) {
		// TODO Auto-generated method stub
		return queQDao.DeleteRecord(id);
	}
	@Override
	public int insertRecord(Record record) {
		// TODO Auto-generated method stub
		return queQDao.insertRecord(record);
	}
	@Override
	public Record findRecordById(Integer id) {
		// TODO Auto-generated method stub
		return queQDao.findRecordById(id);
	}
	@Override
	public int UpdateRecord(Record record) {
		// TODO Auto-generated method stub
		return queQDao.UpdateRecord(record);
	}

}
