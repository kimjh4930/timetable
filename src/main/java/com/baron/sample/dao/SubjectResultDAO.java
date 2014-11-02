package com.baron.sample.dao;

import java.util.List;

import com.baron.sample.model.SubjectCommandModel;
import com.baron.sample.model.SubjectResultModel;

public interface SubjectResultDAO {
	public List<SubjectResultModel> searchSubject(SubjectCommandModel command);
}
