package com.baron.sample.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.baron.sample.model.SubjectResultModel;

@Repository
public class SubjectResultDAOImpl implements SubjectResultDAO{
	public List<SubjectResultModel> searchSubject(String searchType, String searchKey){
		List<SubjectResultModel> list = new ArrayList<SubjectResultModel>();
		
		SubjectResultModel model1 = new SubjectResultModel();
		model1.setSubjectCode("0X12345678");
		model1.setSubjectName("인간과우주");
		model1.setSubjectDept("교양");
		model1.setGrade("1학년");
		model1.setCredit("3학점");
		model1.setProfessorName("최강훈");
		model1.setClassTime("화123");
		model1.setClassroom("정보대");
		list.add(model1);
		
		SubjectResultModel model2 = new SubjectResultModel();
		model2.setSubjectCode("0X12345678");
		model2.setSubjectName("OTL론");
		model2.setSubjectDept("교양");
		model2.setGrade("1학년");
		model2.setCredit("3학점");
		model2.setProfessorName("모름");
		model2.setClassTime("화123");
		model2.setClassroom("사회대");
		list.add(model2);
		
		return list;
	}
	//public LineEvaluationModel selectLineEvaluation(String searchType, String searchKey) {

		/*LineEvaluationModel model = new LineEvaluationModel();
		model.setSubjectName("3급한국어회화(2)");
		model.setProfessorName("김한석");
		model.setStarScore(9.34f);
		model.setSubjectCode(subjectCode);
		
		List<LineEvaluationItem> itemList=new ArrayList<LineEvaluationItem>();
		
		LineEvaluationItem item1 = new LineEvaluationItem();
		item1.setId("k123");
		item1.setComent("good!");
		item1.setStarScore(10f);
		
		LineEvaluationItem item2 = new LineEvaluationItem();
		item2.setId("shio");
		item2.setComent("bad!");
		item2.setStarScore(1f);
		
		itemList.add(item1);
		itemList.add(item2);
		model.setItemList(itemList);
		
		return model;*/
	//}
}
