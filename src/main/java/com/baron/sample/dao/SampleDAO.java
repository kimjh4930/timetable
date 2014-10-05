package com.baron.sample.dao;

import java.util.List;

import com.baron.sample.model.LineEvaluationItem;
import com.baron.sample.model.LineEvaluationModel;

public interface SampleDAO {

	int selectTest();

	LineEvaluationModel selectLineEvaluation(int subjectCode);

	int selectMemberCount(int userId);

	List<LineEvaluationItem> selectLineEvaluationItem(int subjectCode);

}
