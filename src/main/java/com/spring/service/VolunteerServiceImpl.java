package com.spring.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.VolunteerDao;
import com.spring.model.VolunteerRegistration;

@Service
public class VolunteerServiceImpl implements VolunteerService {

	private VolunteerDao volunteerDao;

	public void setVolunteerDao(VolunteerDao volunteerDao) {
		this.volunteerDao = volunteerDao;
	}

	@Override
	@Transactional
	public int volunteerRegistration(VolunteerRegistration volunteerRegistration) {

		int count = this.volunteerDao.volunteerRegistration(volunteerRegistration);

		return count;
	}

}
