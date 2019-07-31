package com.spring.model;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class CandiateProfile implements Serializable {

	// Personal Info-----------------------------

	private int id;
	private String title;
	private String firstName;
	private String middleName;
	private String lastName;
	private String dateOfBirth;
	private int age;
	private String gender;
	private String phone;
	private String email;
	private String bloodGroup;
	private String martialStatus;

	// Personal Info-----------------------------

	// Contact Info-----------------------------

	

	// Contact Info-----------------------------

	// Family Info-----------------------------

	private String fatherOrGaurdianName;
	private String relation;
	private String fatherOrGaurdianPhoneNumber;

	// Family Info-----------------------------

	// Education Info-----------------------------

	// EducationInfo-----------------------------

	// Disability Info-----------------------------

	private int disabilityCategory;
	private int disabilityType;
	private String disabilityPercentage;
	private MultipartFile disabilityFile;
	private String disabilityFileDbPath;

	// Disability Info-----------------------------

	// Career Info-----------------------------

	// Career Info-----------------------------

	// Skill and training Info-----------------------------

	// Skill and training Info-----------------------------

	// Hobbies and Habits Info-----------------------------

	// Hobbies and Habits Info-----------------------------

}
