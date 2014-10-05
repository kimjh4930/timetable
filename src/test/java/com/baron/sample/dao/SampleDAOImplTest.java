package com.baron.sample.dao;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.baron.sample.model.LineEvaluationModel;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext-test.xml")
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = true)
@Transactional
public class SampleDAOImplTest {
	
	@Autowired
	private SampleDAO dao;

	@Test
	public void testSelectLineEvaluation() throws Exception {
		//Given
		int subjectCode = 1234567;

		//When
		LineEvaluationModel actual = dao.selectLineEvaluation(subjectCode);

		//Then
		assertEquals(2, actual);
	}
}
