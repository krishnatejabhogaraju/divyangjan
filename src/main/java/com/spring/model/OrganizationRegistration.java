package com.spring.model;

import java.io.Serializable;

public class OrganizationRegistration implements Serializable {

	private int id;
	private String companyName;
	private String location;
	private String phoneNumber;
	private String personName;
	private String email;
	private String landLinenumber;
	private int industryType;
	private String companyWebsiteLink;
	private String registeredCity;
	private String orgPassword;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLandLinenumber() {
		return landLinenumber;
	}

	public void setLandLinenumber(String landLinenumber) {
		this.landLinenumber = landLinenumber;
	}

	public int getIndustryType() {
		return industryType;
	}

	public void setIndustryType(int industryType) {
		this.industryType = industryType;
	}

	public String getCompanyWebsiteLink() {
		return companyWebsiteLink;
	}

	public void setCompanyWebsiteLink(String companyWebsiteLink) {
		this.companyWebsiteLink = companyWebsiteLink;
	}

	public String getRegisteredCity() {
		return registeredCity;
	}

	public void setRegisteredCity(String registeredCity) {
		this.registeredCity = registeredCity;
	}

	public String getOrgPassword() {
		return orgPassword;
	}

	public void setOrgPassword(String orgPassword) {
		this.orgPassword = orgPassword;
	}

}
