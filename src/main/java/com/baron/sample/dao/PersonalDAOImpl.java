package com.baron.sample.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baron.sample.model.PersonalCommandModel;
import com.baron.sample.model.PersonalModel;

@Repository
public class PersonalDAOImpl implements PersonalDAO {
	private static final String NAMESPACE = "timetable.";

	@Autowired
	private SqlSession session;
	
	@Override
	public List<PersonalModel> selectPersonalData(PersonalCommandModel command) {
		
		return session.selectList(NAMESPACE + "selectPersonalData", command);
	}
 
}
