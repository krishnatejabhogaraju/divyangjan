package com.spring.model;

import java.io.Serializable;

public class Industry implements Serializable {

	private int id;

	private String industryType;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIndustryType() {
		return industryType;
	}

	public void setIndustryType(String industryType) {
		this.industryType = industryType;
	}
	
	

}
