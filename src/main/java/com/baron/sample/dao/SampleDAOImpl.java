package com.baron.sample.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.baron.sample.model.LineEvaluationItem;
import com.baron.sample.model.LineEvaluationModel;

@Repository
public class SampleDAOImpl implements SampleDAO {
	private static final String NAMESPACE = "timetable.";

	@Autowired
	private SqlSession session;
	
	@Override
	public int selectTest()  {
		//mybatis에서 받아온거
		return session.<Integer>selectOne(NAMESPACE + "selectNextAdminSerial");
	}
	
	@Override
	public LineEvaluationModel selectLineEvaluation(String subjectCode) {
		return session.selectOne(NAMESPACE + "selectLineEvaluation", subjectCode);
	}
	
	
	@Override
	public List<LineEvaluationItem> selectLineEvaluationItem(String subjectCode) {
		return session.selectList(NAMESPACE + "selectLineEvaluationItem", subjectCode);
	}
	
	@Override
	public int selectMemberCount(int userId) {
		return session.selectOne(NAMESPACE + "selectMember");
	}
	
	@Override
	public void insertLineEvaluationItem(LineEvaluationItem lineEvaluationItem, String subjectCode){
		session.insert(NAMESPACE + "insertLineEvaluationItem", lineEvaluationItem);
	}
}
