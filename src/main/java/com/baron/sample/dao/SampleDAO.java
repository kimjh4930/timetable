package com.baron.sample.dao;

import com.baron.sample.model.LineEvaluationModel;

public interface SampleDAO {

	int selectTest();

	LineEvaluationModel selectLineEvaluation(int subjectCode);

	int selectMemberCount(int userId);

}
