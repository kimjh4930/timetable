package com.baron.sample.model;

public class SubjectCommandModel {
	private String searchType;
	private String searchKey;
	private String department;
	private String section;
	private String day;
	private boolean year1;
	private boolean year2;
	private boolean year3;
	private boolean year4;

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
	//여기다가 학과정보조회 추가

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public boolean getYear1() {
		return year1;
	}

	public void setYear1(boolean year1) {
		this.year1 = year1;
	}

	public boolean getYear2() {
		return year2;
	}

	public void setYear2(boolean year2) {
		this.year2 = year2;
	}

	public boolean getYear3() {
		return year3;
	}

	public void setYear3(boolean year3) {
		this.year3 = year3;
	}

	public boolean getYear4() {
		return year4;
	}

	public void setYear4(boolean year4) {
		this.year4 = year4;
	}
}
