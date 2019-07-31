package com.spring.model;

import java.io.Serializable;

public class SpecializationType implements Serializable {

	private int id;
	private String specializationType;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSpecializationType() {
		return specializationType;
	}

	public void setSpecializationType(String specializationType) {
		this.specializationType = specializationType;
	}

}
