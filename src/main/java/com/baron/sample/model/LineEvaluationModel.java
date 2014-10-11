package com.baron.sample.model;

import java.util.List;

public class LineEvaluationModel {
	private String subjectCode;
	private String subjectName;
	private String professorName;
	private float avgStarScore;
	private List<LineEvaluationItem> itemList;
	
	
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

	public float getAvgStarScore() {
		return avgStarScore;
	}

	public void setAvgStarScore(float avgStarScore) {
		this.avgStarScore = avgStarScore;
	}

	public String getSubjectCode() {
		return subjectCode;
	}

	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}

	public List<LineEvaluationItem> getItemList() {
		return itemList;
	}

	public void setItemList(List<LineEvaluationItem> itemList) {
		this.itemList = itemList;
	}

	
}
