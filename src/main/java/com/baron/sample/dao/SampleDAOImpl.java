package com.baron.sample.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class SampleDAOImpl implements SampleDAO {
	private static final String NAMESPACE = "com.nhnent.admin.AdminModel.";

	@Resource(name = "sqlSession")
	private SqlSession session;
	
	@Override
	public int selectTest()  {
		return session.<Integer>selectOne(NAMESPACE + "selectNextAdminSerial");
	}
}
