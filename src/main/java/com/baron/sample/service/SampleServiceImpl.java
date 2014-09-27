package com.baron.sample.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baron.sample.dao.SampleDAO;
import com.baron.sample.model.LineEvaluationModel;

@Service
public class SampleServiceImpl implements SampleService {
	@Autowired
	private SampleDAO sampleDAO;

	@Override
	public LineEvaluationModel getLineEvaluation(int subjectCode) {
		return sampleDAO.selectLineEvaluation(subjectCode);
	}

}
