package com.spring.model;

import java.io.Serializable;

public class GraduationType implements Serializable {

	private int id;
	private String levelName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLevelName() {
		return levelName;
	}

	public void setLevelName(String levelName) {
		this.levelName = levelName;
	}

}
