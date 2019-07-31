package com.spring.model;

import java.io.Serializable;

public class CandidateFamilyInfo implements Serializable {

	private int id;
	private String gurdianName;
	private String gurdianRelation;
	private String gurdianNumber;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGurdianName() {
		return gurdianName;
	}

	public void setGurdianName(String gurdianName) {
		this.gurdianName = gurdianName;
	}

	public String getGurdianRelation() {
		return gurdianRelation;
	}

	public void setGurdianRelation(String gurdianRelation) {
		this.gurdianRelation = gurdianRelation;
	}

	public String getGurdianNumber() {
		return gurdianNumber;
	}

	public void setGurdianNumber(String gurdianNumber) {
		this.gurdianNumber = gurdianNumber;
	}

}
