package com.spring.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.HomeDao;
import com.spring.dao.PwdDAO;
import com.spring.model.SuccessStory;

public class HomeServiceImpl implements HomeService {

	private HomeDao homeDao;

	public void setHomeDao(HomeDao homeDao) {
		this.homeDao = homeDao;
	}

	@Override
	@Transactional
	public List<SuccessStory> successStories() {

		List<SuccessStory> successStories = this.homeDao.successStories();

		return successStories;
	}

}
