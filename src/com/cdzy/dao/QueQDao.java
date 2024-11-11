package com.cdzy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.cdzy.pojo.Record;
@Repository
public interface QueQDao {
    @Select("select * from tb_record")
	List<Record> findAll(Record record);
    @Delete("delete from tb_record where id=#{id}")
    int DeleteRecord(Integer id);
    @Insert("insert tb_record(id,student_name,date,remark) values(0,#{student_name},#{date},#{remark})")
   int insertRecord(Record record);
    @Select("select * from tb_record where id=#{id}")
    Record findRecordById(Integer id);
    @Update("update tb_record set student_name=#{student_name},date=#{date},remark=#{remark} where id=#{id}")
    int UpdateRecord(Record record);
}
