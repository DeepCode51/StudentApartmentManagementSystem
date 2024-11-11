package com.cdzy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cdzy.pojo.User;
import com.cdzy.service.StudentService;

@Controller
public class StudentController {
@Autowired
StudentService studentService;
@RequestMapping("StudentList")
public String StudentList(User user,Model model) {
	List<User> users=studentService.findAllStudent(user);
	model.addAttribute("users", users);
	return "StudentList";
}
@RequestMapping("findStudentAdd")
public String findAdd(){
	return "StudentAdd";
}
@RequestMapping("insertStudent")
public String insertStudent(User user) {
	studentService.insertStudent(user);
	return "redirect:/StudentList";
}
@RequestMapping("deleteStudent/{id}")
public String deleteStduent(@PathVariable("id")Integer id) {
	studentService.deleteStudentById(id);
	return "redirect:/StudentList";
}
@RequestMapping("findStudentById/{id}")
public String findStudentById(@PathVariable("id")Integer id,Model model){
	User user=studentService.findStudentById(id);
	model.addAttribute("student", user);
	return "StudentUpdate";
}
@RequestMapping("updateStudent")
public String update(User user){
	studentService.UpdateStudent(user);
	return "redirect:/StudentList";
}
@RequestMapping("selectDorm")
public String selectRemrk(String dormBuildId,Model model) {
	List<User> users=studentService.selectuserDorm(dormBuildId);
		model.addAttribute("list", users);
		return "student";

}
}
