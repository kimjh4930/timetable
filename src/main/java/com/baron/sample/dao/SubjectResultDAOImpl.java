package com.baron.sample.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baron.sample.model.SubjectCommandModel;
import com.baron.sample.model.SubjectResultModel;

@Repository
public class SubjectResultDAOImpl implements SubjectResultDAO {
	private static final String NAMESPACE = "timetable.";

	@Autowired
	private SqlSession session;
	
	@Override
	public List<SubjectResultModel> searchSubject(SubjectCommandModel command) {
		return session.selectList(NAMESPACE + "searchSubject", command);
	}
}
