package com.baron.sample.model;

import java.util.List;

public class LineEvaluationModel {
	private int indexNo;
	private int subjectCode;
	private String subjectName;
	private String professorName;
	private float aveStarScore;
	private List<LineEvaluationItem> itemList;
	
	
	
	public int getIndexNo() {
		return indexNo;
	}

	public void setIndexNo(int indexNo) {
		this.indexNo = indexNo;
	}


	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getProfessorName() {
		return professorName;
	}

	public void setProfessorName(String professorName) {
		this.professorName = professorName;
	}

	public float getAveStarScore() {
		return aveStarScore;
	}

	public void setStarScore(float aveStarScore) {
		this.aveStarScore = aveStarScore;
	}

	public int getSubjectCode() {
		return subjectCode;
	}

	public void setSubjectCode(int subjectCode) {
		this.subjectCode = subjectCode;
	}

	public List<LineEvaluationItem> getItemList() {
		return itemList;
	}

	public void setItemList(List<LineEvaluationItem> itemList) {
		this.itemList = itemList;
	}

	
}
