package com.spring.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.spring.dao.AdminDao;
import com.spring.dao.AgencyDao;
import com.spring.model.SkillAndTraining;
import com.spring.model.SuccessStory;

@Service
public class AdminServiceImpl implements AdminService {

	private AdminDao adminDao;

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	@Transactional
	public String fileUpload(MultipartFile file, String name, String path) {

		String s = this.adminDao.fileUpload(file, name, path);

		return s;
	}

	@Override
	@Transactional
	public int postSuccessStory(SuccessStory successStory, HttpServletRequest request) {

		int i = this.adminDao.postSuccessStory(successStory, request);

		return i;
	}

	@Override
	@Transactional
	public int postSkillAndTraining(SkillAndTraining skillAndTraining, HttpServletRequest request) {

		int i = this.adminDao.postSkillAndTraining(skillAndTraining, request);

		return i;
	}

}
