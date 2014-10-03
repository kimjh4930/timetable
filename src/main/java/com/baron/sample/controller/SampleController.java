package com.baron.sample.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baron.sample.model.LineEvaluationModel;
import com.baron.sample.model.SubjectResultModel;
import com.baron.sample.service.SampleService;

@Controller
public class SampleController {
	@Autowired
	private SampleService service;
	
	@RequestMapping("/sampleForm.baron")
	public String viewSampleForm() {
		return "sampleForm";
	}


	@RequestMapping("/getList.baron")
	public String getList() {
		return "getList";
	}
	
	@RequestMapping("/getLineEvaluation.baron")
	public String getLineEvaluation(Model model, int subjectCode) {
		LineEvaluationModel lineEvaluationModel = service.getLineEvaluation(subjectCode);
		model.addAttribute("lineEvaluation", lineEvaluationModel);
		
		return "lineEvaluationPopup";
	}

	@RequestMapping("/getSearchResult.baron")
	public String searchSubjectReslut(Model model, String searchType, String searchKey) {
		List<SubjectResultModel> subjectResultList = service.getSubjectResultList(searchType, searchKey);//new ArrayList<SubjectResultModel>();
		model.addAttribute("subjectResultList", subjectResultList); //(key, value)
		//getList의 자료를 받아옴
		return "getList";
	}

}
