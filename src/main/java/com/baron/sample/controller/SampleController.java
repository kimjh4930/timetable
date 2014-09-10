package com.baron.sample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SampleController {

	@RequestMapping("/sampleForm.baron")
	public String viewSampleForm() {
		return "sampleForm";
	}
}
