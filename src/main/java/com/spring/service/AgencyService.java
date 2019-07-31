package com.spring.service;

import java.util.Map;

import com.spring.model.JobPost;
import com.spring.model.OrganizationRegistration;

public interface AgencyService {
	
	public int jobPost(JobPost jobPost);
	
public Map<String, String> getIndustrtType();
	
	public int organizationRegistration(OrganizationRegistration organizationRegistration);

}
