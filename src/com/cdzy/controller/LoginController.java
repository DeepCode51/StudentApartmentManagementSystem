package com.cdzy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cdzy.pojo.User;
import com.cdzy.service.LoginService;

@Controller
public class LoginController {
	@Autowired 
	LoginService ls;
@RequestMapping("login")
public String login(){
	return "login";
}
@RequestMapping("dologin")
public String dologin(String stu_code,String passWord,HttpSession httpSession,Model model){
	
	User users=ls.findByNameAndPwd(stu_code, passWord);
	model.addAttribute("user", users);
	if (users==null) {
		return "login";
	} else {
		httpSession.setAttribute("name", users.getName());
		httpSession.setAttribute("stu_code", users.getStu_code());
		httpSession.setAttribute("PassWord", users.getPassWord());

		return "index";
	}
	
}
@RequestMapping("zhuce")
public String zhuce() {
	return "zhuce";
}
@RequestMapping("dozhuce")
public String dozhuce(User user) {
	ls.insertnumber(user);
	return "redirect:/login";
}

}

