package com.baron.sample.service;

import java.util.List;

import com.baron.sample.model.LineEvaluationModel;
import com.baron.sample.model.SubjectResultModel;

public interface SampleService {

	LineEvaluationModel getLineEvaluation(int subjectCode);

	List<SubjectResultModel> getSubjectResultList(String searchType, String searchKey);

}
