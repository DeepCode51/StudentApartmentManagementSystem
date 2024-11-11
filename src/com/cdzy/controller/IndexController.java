package com.cdzy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cdzy.pojo.Dormbuild;
import com.cdzy.pojo.User;
import com.cdzy.service.IndexService;


@Controller
public class IndexController {
	@Autowired
	IndexService indexService;
@RequestMapping("logout")
public String logout(HttpSession httpSession) {
	httpSession.removeAttribute("logout");
	return "redirect:/login";
}
@RequestMapping("sslList")
public String findAll(Dormbuild dormbuild,Model model) {
	List<Dormbuild> list=indexService.findAll(dormbuild);
	model.addAttribute("dd", list);
	return "sslList";
}
@RequestMapping("delete/{id}")
public String deleteDormbuildById(@PathVariable("id")Integer id) {
	indexService.deleteDormbuild(id);
	return "redirect:/sslList";
}

@RequestMapping("findSslAdd")
public String findinsertDormbuild() {
	return "sslAdd";
}
@RequestMapping("insertDormbuild")
public String insertDormbuild(Dormbuild dormbuild) {
	indexService.insertDormbuild(dormbuild);
	return "redirect:/sslList";
}
@RequestMapping("toupdate/{id}")
public String findByIdUpdate(@PathVariable("id")Integer id,Model model){
	Dormbuild dormbuild=indexService.findByIdUpdateDormbuild(id);
	model.addAttribute("dorm", dormbuild);
	return "sslUpdate";
}
@RequestMapping("doupdate")
public String doupdate(Dormbuild dormbuild){
	indexService.updateDormbuild(dormbuild);
	return "redirect:/sslList";
}
@RequestMapping("UpdatePwd")
public String UpdatePwd() {
	return "UpdatePwd";
}
@RequestMapping("doUpdatePwd")
public String doUpdatePwd(User user) {
	indexService.updatePwd(user);
	
		return "redirect:/login";
	}
@RequestMapping("one_set")
public String Personal() {
	return "Personal";
}

@RequestMapping("selectRemark")
public String selectRemrk(String remark,Model model) {
	List<Dormbuild> dorm=indexService.selectdormbuid(remark);
		model.addAttribute("list", dorm);
		return "ssl";

}
}
