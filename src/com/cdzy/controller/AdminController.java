package com.cdzy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdzy.pojo.Dormbuild;
import com.cdzy.pojo.User;
import com.cdzy.service.AdminService;

@Controller
public class AdminController {
@Autowired
AdminService adminService;

@RequestMapping("adminList")
public String adminList(User user,Model model){
	List<User> list=adminService.findAdmin(user);
	model.addAttribute("admin", list);
	return "adminList";
}
@RequestMapping("deleteAdmin/{id}")
public String delete(@PathVariable("id")Integer id){
	adminService.deleteAdmin(id);
	return "redirect:/adminList";
}
@RequestMapping("findadminAdd")
public String findadminAdd() {
	return "adminAdd";
}
@RequestMapping(value = "insertAdmin",method = RequestMethod.POST)
public String insert(User user){
	adminService.insertAdmin(user);
	return "redirect:/adminList";
}
@RequestMapping("findAdminById/{id}")
public String findAdminById(@PathVariable("id")Integer id,Model model) {
	User user=adminService.findAdminById(id);
	model.addAttribute("admin", user);
	return "adminUpdate";
}
@RequestMapping("update")
public String update(User user) {
	adminService.updateAdmin(user);
	return "redirect:/adminList";
}
@RequestMapping("selectDormname")
public String selectRemrk(String dormBuildId,Model model) {
	List<User> users=adminService.selectuserDorm(dormBuildId);
		model.addAttribute("list", users);
		return "admin";
}
}
