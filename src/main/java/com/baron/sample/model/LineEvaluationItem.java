package com.baron.sample.model;

public class LineEvaluationItem {
	private String subjectCode;
	private int indexNo;
	private String userId;
	private String comment;
	private float starScore;


	public String getSubjectCode() {
		return subjectCode;
	}

	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}

	public int getIndexNo() {
		return indexNo;
	}

	public void setIndexNo(int indexNo) {
		this.indexNo = indexNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public float getStarScore() {
		return starScore;
	}

	public void setStarScore(float starScore) {
		this.starScore = starScore;
	}

}
