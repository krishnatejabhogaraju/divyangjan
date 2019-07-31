package com.spring.model;

public class CandidateCareerInfo {

	private int id;
	private String designationName;
	private String startDate;
	private String endDate;
	private String currentlyWorking;
	private String company;
	private String location;
	private String courseType;
	private String industryType;
	private String careerRemarks;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDesignationName() {
		return designationName;
	}

	public void setDesignationName(String designationName) {
		this.designationName = designationName;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getCurrentlyWorking() {
		return currentlyWorking;
	}

	public void setCurrentlyWorking(String currentlyWorking) {
		this.currentlyWorking = currentlyWorking;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getCourseType() {
		return courseType;
	}

	public void setCourseType(String courseType) {
		this.courseType = courseType;
	}

	public String getIndustryType() {
		return industryType;
	}

	public void setIndustryType(String industryType) {
		this.industryType = industryType;
	}

	public String getCareerRemarks() {
		return careerRemarks;
	}

	public void setCareerRemarks(String careerRemarks) {
		this.careerRemarks = careerRemarks;
	}

}
