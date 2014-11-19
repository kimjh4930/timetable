package com.baron.sample.dao;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.baron.sample.model.SubjectCommandModel;
import com.baron.sample.model.SubjectResultModel;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext-test.xml")
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = true)
@Transactional
public class SubjectResultDAOImplTest {

	@Autowired
	private SubjectResultDAO dao;

	@Test
	public void testSelectSubject_과목명으로_조회했을때() throws Exception {
		//Given
		String searchKey = "인간과우주";
		String searchType = "subject";
		
		SubjectCommandModel command = new SubjectCommandModel();
		command.setSearchKey(searchKey);
		command.setSearchType(searchType);

		//When
		List<SubjectResultModel> actual = dao.searchSubject(command);

		//Then
		assertNotNull(actual);
	}
	
	/*@Test
	public void testSelectSubject_교수명으로_조회했을때() throws Exception {
		//Given
		String searchKey = "이문학";
		String searchType = "professor";
		
		SubjectCommandModel command = new SubjectCommandModel();
		command.setSearchKey(searchKey);
		command.setSearchType(searchType);

		//When
		List<SubjectResultModel> actual = dao.searchSubject(command);

		//Then
		assertNotNull(actual);
	}*/
	@Test
	public void testSelectSubject_학과_조회했을때() throws Exception {
		//Given
		String searchKey = "";
		String searchType = "subject";
		String department = "컴퓨터공학부";
		String section = "선택";
		String day = "";
		String grade1 = "1";
//		String grade2 = "2";
//		String grade3 = "3";
//		String grade4 = "4";
		
		SubjectCommandModel command = new SubjectCommandModel();
		command.setSearchKey(searchKey);
		command.setSearchType(searchType);
		command.setDepartment(department);
		command.setSection(section);
		command.setDay(day);
		command.setYear1(grade1);

		//When
		List<SubjectResultModel> actual = dao.searchSubject(command);

		//Then
		assertNotNull(actual);
	}
}
