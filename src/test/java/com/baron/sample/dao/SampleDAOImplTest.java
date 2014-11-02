package com.baron.sample.dao;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.baron.sample.model.LineEvaluationItem;
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
		String subjectCode = "0001701002";

		//When
		LineEvaluationModel actual = dao.selectLineEvaluation(subjectCode);

		//Then
		assertNotNull(actual);
	}
	
	@Test
	public void testSelectLineEvaluationItem() throws Exception {
		//Given
		String subjectCode = "0001701002";

		//When
		List<LineEvaluationItem> actual = dao.selectLineEvaluationItem(subjectCode);

		//Then
		assertNotNull(actual);
	}
	
	@Test
	public void testSelectMember() throws Exception {
		//Given
		int memberSerial = 14660;

		//When
		int actual = dao.selectMemberCount(memberSerial);

		//Then
		assertEquals(1, actual);
	}
	@Test
	public void testSelectDepartment() throws Exception {
		
		List<String> departmentList = dao.selectDepartment();
		
		assertNotNull(departmentList);
	}
	
	
}
