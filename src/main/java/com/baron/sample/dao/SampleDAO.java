package com.baron.sample.dao;

import java.util.List;

import com.baron.sample.model.LineEvaluationItem;
import com.baron.sample.model.LineEvaluationModel;

public interface SampleDAO {

	int selectTest();

	LineEvaluationModel selectLineEvaluation(String subjectCode);

	int selectMemberCount(int userId);

	List<LineEvaluationItem> selectLineEvaluationItem(String subjectCode);

	List<String> selectDepartment();

}
