package com.baron.sample.dao;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.baron.sample.model.PersonalCommandModel;
import com.baron.sample.model.PersonalModel;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext-test.xml")
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = true)
@Transactional
public class PersonalDAOImplTest {
	@Autowired
	private PersonalDAO dao;

	@Test
	public void test() throws Exception {
		//Given
		PersonalCommandModel command = new PersonalCommandModel();
		command.setMemberCode(3465);
		command.setTimetableNo(1);

		//When
		List<PersonalModel> actual = dao.selectPersonalData(command);

		//Then
		assertEquals(2, actual);
	}
}
