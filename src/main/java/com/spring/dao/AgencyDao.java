package com.spring.dao;

import java.util.Map;

import com.spring.model.JobPost;
import com.spring.model.OrganizationRegistration;

public interface AgencyDao {

	public int jobPost(JobPost jobPost);

	public Map<String, String> getIndustrtType();

	public int organizationRegistration(OrganizationRegistration organizationRegistration);

}
