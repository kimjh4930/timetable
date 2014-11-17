package com.baron.sample.service;

import java.util.List;

import com.baron.sample.model.LineEvaluationModel;
import com.baron.sample.model.SubjectCommandModel;
import com.baron.sample.model.SubjectResultModel;

public interface SampleService {

	LineEvaluationModel getLineEvaluation(String subjectCode);

	void registerSubject(String subjectCode, int memberCode, int timetableNo);

	List<String> getDepartmentList();
		
	void deleteLineEvaluationItem(int indexNo);

	void addLineEvaluationItem(String comment, String subjectCode,
			String userId, float starScore);

	List<SubjectResultModel> getSubjectResultList(SubjectCommandModel command);

}
