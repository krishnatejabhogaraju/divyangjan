package com.spring.service;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.AgencyDao;
import com.spring.dao.LoginDAO;
import com.spring.model.JobPost;
import com.spring.model.OrganizationRegistration;

@Service
public class AgencyServiceImpl implements AgencyService {

	private AgencyDao agencyDao;

	public void setAgencyDao(AgencyDao agencyDao) {
		this.agencyDao = agencyDao;
	}

	@Override
	@Transactional
	public int jobPost(JobPost jobPost) {

		return this.agencyDao.jobPost(jobPost);

	}
	
	
	@Override
	@Transactional
	public Map<String, String> getIndustrtType() {
		// TODO Auto-generated method stub

		Map<String, String> industryList = this.agencyDao.getIndustrtType();
		return industryList;
	}

	@Override
	@Transactional
	public int organizationRegistration(OrganizationRegistration organizationRegistration) {

		int i = this.agencyDao.organizationRegistration(organizationRegistration);

		return i;
	}


}
