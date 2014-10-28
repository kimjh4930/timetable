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
	public String viewSampleForm(Model model) {
		List<String> departmentList = service.getDepartmentList();
		model.addAttribute("departmentList", departmentList);
		return "sampleForm";
	}


	@RequestMapping("/getList.baron")
	public String getList() {
		return "getList";
	}
	
	@RequestMapping("/getLineEvaluation.baron")
	public String getLineEvaluation(Model model, String subjectCode) {
		LineEvaluationModel lineEvaluationModel = service.getLineEvaluation(subjectCode);
		model.addAttribute("lineEvaluation", lineEvaluationModel);
		return "lineEvaluationPopup";
	}
	
	
	@RequestMapping("/addLineEvaluation.baron")
	public String addLineEvaluation(Model model, String comment,String subjectCode) {
		System.out.println();
		System.out.println("과목코두: " + subjectCode);
		System.out.println();
		System.out.println();
		System.out.println("코멘트: " + comment);
		System.out.println();
		String userId="zakarose";
		service.addLineEvaluationItem(comment,subjectCode,userId);
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

	@RequestMapping("/registerSubject.baron")
	public String registerSubject(Model model, String subjectCode, int timetableNo) {
		//List<SubjectResultModel> subjectResultList = service.getSubjectResultList(searchType, searchKey);//new ArrayList<SubjectResultModel>();
		//model.addAttribute("subjectResultList", subjectResultList); //(key, value)
		//getList의 자료를 받아옴
		int memberCode = 000000;
		service.registerSubject(subjectCode, memberCode, timetableNo);
		
		return "subjectCell";
	}
}
