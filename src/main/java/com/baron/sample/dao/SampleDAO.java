package com.baron.sample.dao;

import com.baron.sample.model.LineEvaluationModel;

public interface SampleDAO {

	LineEvaluationModel selectLineEvaluation(int subjectCode);

}
