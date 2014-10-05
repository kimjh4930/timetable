package com.baron.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baron.sample.dao.PersonalDAO;
import com.baron.sample.dao.SampleDAO;
import com.baron.sample.dao.SubjectResultDAO;
import com.baron.sample.model.LineEvaluationModel;
import com.baron.sample.model.PersonalCommandModel;
import com.baron.sample.model.PersonalModel;
import com.baron.sample.model.SubjectResultModel;

@Service
public class SampleServiceImpl implements SampleService {
	@Autowired
	private SampleDAO sampleDAO;
	
	@Autowired
	private SubjectResultDAO subjectResultDAO;
	
	@Autowired
	private PersonalDAO personalDAO;

	@Override
	public LineEvaluationModel getLineEvaluation(int subjectCode) {
		return sampleDAO.selectLineEvaluation(subjectCode);
	}

	@Override
	public List<SubjectResultModel> getSubjectResultList(String searchType, String searchKey) {
		// TODO Auto-generated method stub
		return subjectResultDAO.searchSubject(searchType, searchKey);
	}

	@Override
	public void registerSubject(String subjectCode, int memberCode, int timetableNo) {
		// TODO Auto-generated method stub
		PersonalCommandModel command = new PersonalCommandModel();
		command.setMemberCode(memberCode);
		command.setTimetableNo(timetableNo);
		List<PersonalModel> list = personalDAO.selectPersonalData(command);
	}
	
}
