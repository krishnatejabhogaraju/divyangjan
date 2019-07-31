package com.spring.model;




public class Login implements java.io.Serializable {

	private int id;
	private String userName;
	private String password;
	private String phoneNumber;
	private String email;
	private String jobId;
	
	public Login() {
	}

	public Login(int id) {
		this.id = id;
	}

	public Login(int id, String userName, String password) 
	{
		this.id = id;
		this.userName = userName;
		this.password = password;
	}

	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getJobId() {
		return jobId;
	}

	public void setJobId(String jobId) {
		this.jobId = jobId;
	}
	
}
