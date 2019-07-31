package com.spring.model;

import java.util.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class JobPost implements java.io.Serializable {

	private int jobId;
	private String jobTitle;
	private String industryType;
	private String organizationName;
	private String jobDescription;
	private String experienceRequired;
	private String skillSets;
	private String location;
	private String lastDateToApply;
	private String salary;
	private String disabilityType;
	private String additionalNotes;
	private int ageMin;
	private int ageMax;

	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public int getAgeMin() {
		return ageMin;
	}

	public void setAgeMin(int ageMin) {
		this.ageMin = ageMin;
	}

	public int getAgeMax() {
		return ageMax;
	}

	public void setAgeMax(int ageMax) {
		this.ageMax = ageMax;
	}

	public String getOrganizationName() {
		return organizationName;
	}

	public void setOrganizationName(String organizationName) {
		this.organizationName = organizationName;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getIndustryType() {
		return industryType;
	}

	public void setIndustryType(String industryType) {
		this.industryType = industryType;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}

	public String getExperienceRequired() {
		return experienceRequired;
	}

	public void setExperienceRequired(String experienceRequired) {
		this.experienceRequired = experienceRequired;
	}

	public String getSkillSets() {
		return skillSets;
	}

	public void setSkillSets(String skillSets) {
		this.skillSets = skillSets;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getLastDateToApply() {
		return lastDateToApply;
	}

	public void setLastDateToApply(String lastDateToApply) {
		this.lastDateToApply = lastDateToApply;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getDisabilityType() {
		return disabilityType;
	}

	public void setDisabilityType(String disabilityType) {
		this.disabilityType = disabilityType;
	}

	public String getAdditionalNotes() {
		return additionalNotes;
	}

	public void setAdditionalNotes(String additionalNotes) {
		this.additionalNotes = additionalNotes;
	}

}
