package com.baron.sample.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baron.sample.model.LineEvaluationItem;
import com.baron.sample.model.LineEvaluationModel;

@Repository
public class SampleDAOImpl implements SampleDAO {
	private static final String NAMESPACE = "com.baron.sample.SampleModel.";

	@Autowired
	private SqlSession session;
	
	@Override
	public int selectTest()  {
		//mybatis에서 받아온거
		return session.<Integer>selectOne(NAMESPACE + "selectNextAdminSerial");
	}
	
	@Override
	public LineEvaluationModel selectLineEvaluation(int subjectCode) {
		
		
		return session.selectOne(NAMESPACE);
		
		
/*
		LineEvaluationModel model = new LineEvaluationModel();
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
	}
}
