package com.spring.model;

import java.io.Serializable;

public class CandidateContactInfo implements Serializable {

	private int id;
	private String primaryPhoneNumber;
	private String telephoneNumber;
	private String permanentDoorNo;
	private String permanentStreet;
	private String permanentLocation;
	private String permanentCity;
	private String permanentLandMark;
	private String currentDoorNo;
	private String currentStreet;
	private String currentLocation;
	private String currentCity;
	private String currentLandMark;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPrimaryPhoneNumber() {
		return primaryPhoneNumber;
	}

	public void setPrimaryPhoneNumber(String primaryPhoneNumber) {
		this.primaryPhoneNumber = primaryPhoneNumber;
	}

	public String getTelephoneNumber() {
		return telephoneNumber;
	}

	public void setTelephoneNumber(String telephoneNumber) {
		this.telephoneNumber = telephoneNumber;
	}

	public String getPermanentDoorNo() {
		return permanentDoorNo;
	}

	public void setPermanentDoorNo(String permanentDoorNo) {
		this.permanentDoorNo = permanentDoorNo;
	}

	public String getPermanentStreet() {
		return permanentStreet;
	}

	public void setPermanentStreet(String permanentStreet) {
		this.permanentStreet = permanentStreet;
	}

	public String getPermanentLocation() {
		return permanentLocation;
	}

	public void setPermanentLocation(String permanentLocation) {
		this.permanentLocation = permanentLocation;
	}

	public String getPermanentCity() {
		return permanentCity;
	}

	public void setPermanentCity(String permanentCity) {
		this.permanentCity = permanentCity;
	}

	public String getPermanentLandMark() {
		return permanentLandMark;
	}

	public void setPermanentLandMark(String permanentLandMark) {
		this.permanentLandMark = permanentLandMark;
	}

	public String getCurrentDoorNo() {
		return currentDoorNo;
	}

	public void setCurrentDoorNo(String currentDoorNo) {
		this.currentDoorNo = currentDoorNo;
	}

	public String getCurrentStreet() {
		return currentStreet;
	}

	public void setCurrentStreet(String currentStreet) {
		this.currentStreet = currentStreet;
	}

	public String getCurrentLocation() {
		return currentLocation;
	}

	public void setCurrentLocation(String currentLocation) {
		this.currentLocation = currentLocation;
	}

	public String getCurrentCity() {
		return currentCity;
	}

	public void setCurrentCity(String currentCity) {
		this.currentCity = currentCity;
	}

	public String getCurrentLandMark() {
		return currentLandMark;
	}

	public void setCurrentLandMark(String currentLandMark) {
		this.currentLandMark = currentLandMark;
	}

}
