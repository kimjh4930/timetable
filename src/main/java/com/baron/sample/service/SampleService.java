package com.baron.sample.service;

import java.util.List;

import com.baron.sample.model.LineEvaluationModel;
import com.baron.sample.model.SubjectResultModel;

public interface SampleService {

	LineEvaluationModel getLineEvaluation(String subjectCode);

	List<SubjectResultModel> getSubjectResultList(String searchType, String searchKey);

	void registerSubject(String subjectCode, int memberCode, int timetableNo);

	List<String> getDepartmentList();
		
	void deleteLineEvaluationItem(int indexNo);

	void addLineEvaluationItem(String comment, String subjectCode,
			String userId, float starScore);

}
