package com.baron.sample.model;

public class SubjectCommandModel {
	private String searchType;
	private String searchKey;
	private String department;
	private String section;

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchKey() {
		return searchKey;
	}

	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	
	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}
}
