package com.spring.model;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class CandidateDisabilityInfo implements Serializable {

	private int id;
	private String disabilityCategory;
	private String disabilityType;
	private String disabilityPercentage;
	private String certificatePath;
	private MultipartFile disabilityCertificate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDisabilityCategory() {
		return disabilityCategory;
	}

	public void setDisabilityCategory(String disabilityCategory) {
		this.disabilityCategory = disabilityCategory;
	}

	public String getDisabilityType() {
		return disabilityType;
	}

	public void setDisabilityType(String disabilityType) {
		this.disabilityType = disabilityType;
	}

	public String getDisabilityPercentage() {
		return disabilityPercentage;
	}

	public void setDisabilityPercentage(String disabilityPercentage) {
		this.disabilityPercentage = disabilityPercentage;
	}

	public String getCertificatePath() {
		return certificatePath;
	}

	public void setCertificatePath(String certificatePath) {
		this.certificatePath = certificatePath;
	}

	public MultipartFile getDisabilityCertificate() {
		return disabilityCertificate;
	}

	public void setDisabilityCertificate(MultipartFile disabilityCertificate) {
		this.disabilityCertificate = disabilityCertificate;
	}

}
