package com.baron.sample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SampleController {

	@RequestMapping("/sampleForm.baron")
	public String viewSampleForm() {
		return "sampleForm";
	}
	
	
	@RequestMapping("/sampleForm.getList.baron")
	public String getList(/*Model model, String name, int year*/) {
//		model.addAttribute("name", name);
//		model.addAttribute("year", year);
//		
		return "getList";
	}
	
}
	