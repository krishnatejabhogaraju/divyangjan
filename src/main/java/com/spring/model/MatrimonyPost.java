package com.spring.model;

public class MatrimonyPost implements java.io.Serializable 
{

	private String name;
	private String gender;
	private String dateOfBirth;
	private String religion;
	private String motherTongue;
	private String casteDivision;
	private String mobileNumber;
	private String email;
	
	public MatrimonyPost()
	{
		
	}
	
	public MatrimonyPost(String name, String gender, String dateOfBirth, String religion, String motherTongue,
			String casteDivision, String mobileNumber, String email) {
		super();
		this.name = name;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.religion = religion;
		this.motherTongue = motherTongue;
		this.casteDivision = casteDivision;
		this.mobileNumber = mobileNumber;
		this.email = email;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getMotherTongue() {
		return motherTongue;
	}
	public void setMotherTongue(String motherTongue) {
		this.motherTongue = motherTongue;
	}
	public String getCasteDivision() {
		return casteDivision;
	}
	public void setCasteDivision(String casteDivision) {
		this.casteDivision = casteDivision;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
