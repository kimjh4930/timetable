package com.baron.sample.model;

import java.util.List;

public class LineEvaluationModel {
	private String subjectName;
	private String professorName;
	private float starScore;
	private int subjectCode;
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

	public float getStarScore() {
		return starScore;
	}

	public void setStarScore(float starScore) {
		this.starScore = starScore;
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
