package com.baron.sample.model;

import java.util.Date;

public class PersonalModel {
	private int indexNo;
	private int memberCode;
	private String semester;
	private int timetableNo;
	private String subjectStr;
	private Date insertDate;
	private Date updateDate;

	public int getIndexNo() {
		return indexNo;
	}

	public void setIndexNo(int indexNo) {
		this.indexNo = indexNo;
	}

	public int getMemberCode() {
		return memberCode;
	}

	public void setMemberCode(int memberCode) {
		this.memberCode = memberCode;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public int getTimetableNo() {
		return timetableNo;
	}

	public void setTimetableNo(int timetableNo) {
		this.timetableNo = timetableNo;
	}

	public String getSubjectStr() {
		return subjectStr;
	}

	public void setSubjectStr(String subjectStr) {
		this.subjectStr = subjectStr;
	}

	public Date getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

}
