package com.baron.sample.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baron.sample.model.LineEvaluationModel;

@Repository
public class SampleDAOImpl implements SampleDAO {
	private static final String NAMESPACE = "com.baron.sample.SampleModel.";

	@Autowired
	private SqlSession session;
	
	@Override
	public int selectTest()  {
		return session.<Integer>selectOne(NAMESPACE + "selectNextAdminSerial");
	}
	
	@Override
	public LineEvaluationModel selectLineEvaluation(int subjectCode) {

		return null;
	}

}
