package com.cdzy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import com.cdzy.pojo.Dormbuild;
import com.cdzy.pojo.User;

@Repository
public interface IndexDao {
	//查询宿舍楼所有信息
@Select("select * from tb_dormbuild")
 List<Dormbuild> findAll(Dormbuild dormbuild);
//根据id删除宿舍楼相关信息
@Delete("delete from tb_dormbuild where id=#{id}")
int deleteDormbuild(Integer id);
//在宿舍楼表插入相关信息
@Insert("insert tb_dormbuild(id,name,remark) values(0,#{name},#{remark})")
int insertDormbuild(Dormbuild dormbuild);
//根据id跳转到修改页面
@Select("select * from tb_dormbuild where id=#{id} ")
Dormbuild findByIdUpdateDormbuild(Integer id);
//修改宿舍楼表相关信息
@Update("update tb_dormbuild set name=#{name},remark=#{remark} where id=#{id} ")
boolean updateDormbuild(Dormbuild dormbuild);

//修改密码
@Update("update tb_user set passWord=#{passWord} where name=#{name}")
int updatePwd(User user);

//模糊查询
@Select("select * from tb_dormbuild where remark like '%${remark}%'")
List<Dormbuild> selectdormbuid(@Param("remark")String remark);
}
