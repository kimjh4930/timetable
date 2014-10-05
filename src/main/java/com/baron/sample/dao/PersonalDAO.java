package com.baron.sample.dao;

import java.util.List;

import com.baron.sample.model.PersonalCommandModel;
import com.baron.sample.model.PersonalModel;

public interface PersonalDAO {

	List<PersonalModel> selectPersonalData(PersonalCommandModel command);

}
