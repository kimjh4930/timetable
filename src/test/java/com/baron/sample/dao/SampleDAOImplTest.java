package com.baron.sample.dao;

import static org.junit.Assert.*;

import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext-test.xml")
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = true)
@Transactional
public class SampleDAOImplTest {
	
	@Autowired
	private SampleDAO dao;

	@Test
	public void test() throws Exception {
		//Given

		//When
		int actual = dao.selectTest();

		//Then
		assertEquals(2, actual);
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
}
