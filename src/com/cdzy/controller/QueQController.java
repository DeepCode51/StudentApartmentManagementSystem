package com.cdzy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cdzy.pojo.Record;
import com.cdzy.service.QueQService;

@Controller
public class QueQController {
@Autowired
QueQService qqService;
@RequestMapping("QueQList")
public String QueQList(Record record,Model model) {
	List<Record> reList=qqService.findAll(record);
	model.addAttribute("record", reList);
	return "QueQList";
}
@RequestMapping("deleteRecord/{id}")
public String deleteRecord(@PathVariable("id")Integer id) {
	qqService.DeleteRecord(id);
	return "redirect:/QueQList";
}
@RequestMapping("findRecordAdd")
public String findRecordAdd() {
	return "QueQAdd";
}
@RequestMapping("insertRecord")
public String insertRecord(Record record) {
	qqService.insertRecord(record);
	return "redirect:/QueQList";
}
@RequestMapping("findRecordById/{id}")
public String findRecordById(@PathVariable("id")Integer id,Model model) {
	Record record=qqService.findRecordById(id);
	model.addAttribute("records", record);
	return "QueQUpdate";
}
@RequestMapping("updateRecord")
public String updateRecord(Record record) {
	qqService.UpdateRecord(record);
	return "redirect:/QueQList";
}
}
