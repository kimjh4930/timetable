package com.baron.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baron.sample.dao.PersonalDAO;
import com.baron.sample.dao.SampleDAO;
import com.baron.sample.dao.SubjectResultDAO;
import com.baron.sample.model.LineEvaluationItem;
import com.baron.sample.model.LineEvaluationModel;
import com.baron.sample.model.PersonalCommandModel;
import com.baron.sample.model.PersonalModel;
import com.baron.sample.model.SubjectCommandModel;
import com.baron.sample.model.SubjectResultModel;

@Service
public class SampleServiceImpl implements SampleService {
	@Autowired
	private SampleDAO sampleDAO;
	
	@Autowired
	private SubjectResultDAO subjectResultDAO;
	
	@Autowired
	private PersonalDAO personalDAO;

	@Override
	public LineEvaluationModel getLineEvaluation(String subjectCode) {
		return sampleDAO.selectLineEvaluation(subjectCode);
	}

	@Override
	public List<SubjectResultModel> getSubjectResultList(SubjectCommandModel command) {	
		return subjectResultDAO.searchSubject(command);
	}


	@Override
	public List<String> getDepartmentList() {
		return sampleDAO.selectDepartment();
	}
	//학과선택했을 때 조회
	//교양선택같은 상세 선택할 때 조회

	@Override
	public void registerSubject(String subjectCode, int memberCode, int timetableNo) {
		// TODO Auto-generated method stub
		PersonalCommandModel command = new PersonalCommandModel();
		command.setMemberCode(memberCode);
		command.setTimetableNo(timetableNo);
		List<PersonalModel> list = personalDAO.selectPersonalData(command);
	}
	
	@Override
	public void addLineEvaluationItem(String comment, String subjectCode, String userId){
//		LineEvaluationModel lineEvaluation= new LineEvaluationModel();
//		 //lineEvaluation.setAvgStarScore(avgStarScore);
//		 //lineEvaluation.setProfessorName(professorName);
//		 lineEvaluation.setSubjectCode(subjectCode);
//		 //lineEvaluation.setSubjectName(subjectName);
//		 lineEvaluation.setItemList(itemList);	
		LineEvaluationItem lineEvaluationItem = new LineEvaluationItem();
		lineEvaluationItem.setComment(comment);
		lineEvaluationItem.setStarScore(8.0f);
		lineEvaluationItem.setUserId(userId);
		lineEvaluationItem.setIndexNo(4);
		sampleDAO.insertLineEvaluationItem(lineEvaluationItem,subjectCode); 
	}


	
}
