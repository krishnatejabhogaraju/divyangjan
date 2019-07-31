package com.spring.model;

import java.io.Serializable;

public class SkillAndTraining implements Serializable {

	private int id;
	private String instituteName;
	private String couresesOffered;
	private String location;
	private String duration;
	private String startDate;
	private String endDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getInstituteName() {
		return instituteName;
	}

	public void setInstituteName(String instituteName) {
		this.instituteName = instituteName;
	}

	public String getCouresesOffered() {
		return couresesOffered;
	}

	public void setCouresesOffered(String couresesOffered) {
		this.couresesOffered = couresesOffered;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
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

}
