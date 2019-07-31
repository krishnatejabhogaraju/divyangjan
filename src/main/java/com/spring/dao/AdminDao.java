package com.spring.dao;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.spring.model.SkillAndTraining;
import com.spring.model.SuccessStory;

public interface AdminDao {

	public String fileUpload(MultipartFile file,String name,String path);
	
	public int postSuccessStory(SuccessStory successStory,HttpServletRequest request);
	
	public int postSkillAndTraining(SkillAndTraining skillAndTraining, HttpServletRequest request);

}
