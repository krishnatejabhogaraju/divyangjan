package com.spring.model;

import org.springframework.web.multipart.MultipartFile;

public class ApplyForJob implements java.io.Serializable
{

	private MultipartFile resumeFile;
	
	private String dbFIlePath;
	private String jobId;

	public ApplyForJob() 
	{
		
	}
	
	
	public ApplyForJob(MultipartFile resumeFile) {
		super();
		this.resumeFile = resumeFile;
	}	
	
	public MultipartFile getResumeFile() {
		return resumeFile;
	}

	public void setResumeFile(MultipartFile resumeFile) {
		this.resumeFile = resumeFile;
	}


	public String getDbFIlePath() {
		return dbFIlePath;
	}


	public void setDbFIlePath(String dbFIlePath) {
		this.dbFIlePath = dbFIlePath;
	}


	public String getJobId() {
		return jobId;
	}


	public void setJobId(String jobId) {
		this.jobId = jobId;
	}



	
	
	
	
	
}
