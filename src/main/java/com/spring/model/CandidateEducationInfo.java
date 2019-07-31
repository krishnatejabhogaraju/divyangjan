package com.spring.model;

import java.io.Serializable;

public class CandidateEducationInfo implements Serializable {

	private int id;
	private String qualification;
	private String yearOfQualification;
	private String institution;
	private String university;
	private String graduationType;
	private String graduationArea;
	private String percentage;
	private String remarks;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getYearOfQualification() {
		return yearOfQualification;
	}

	public void setYearOfQualification(String yearOfQualification) {
		this.yearOfQualification = yearOfQualification;
	}

	public String getInstitution() {
		return institution;
	}

	public void setInstitution(String institution) {
		this.institution = institution;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getGraduationType() {
		return graduationType;
	}

	public void setGraduationType(String graduationType) {
		this.graduationType = graduationType;
	}

	public String getGraduationArea() {
		return graduationArea;
	}

	public void setGraduationArea(String graduationArea) {
		this.graduationArea = graduationArea;
	}

	public String getPercentage() {
		return percentage;
	}

	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

}
