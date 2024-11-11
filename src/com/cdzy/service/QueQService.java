package com.cdzy.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cdzy.pojo.Record;

@Repository
public interface QueQService {
	List<Record> findAll(Record record);
	int DeleteRecord(Integer id);
	int insertRecord(Record record);
	Record findRecordById(Integer id);
	int UpdateRecord(Record record);
}
