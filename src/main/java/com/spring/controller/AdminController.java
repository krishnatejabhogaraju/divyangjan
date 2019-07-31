package com.spring.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.model.JobPost;
import com.spring.model.Login;
import com.spring.model.SkillAndTraining;
import com.spring.model.SuccessStory;
import com.spring.service.AdminService;
import com.spring.service.AgencyService;
import com.spring.service.LoginService;
import com.spring.service.PwdService;

@Controller
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	private AdminService adminService;

	@Autowired(required = true)
	@Qualifier(value = "adminService")
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	@RequestMapping(value = "/laodSuccessStories", method = RequestMethod.GET)
	public String laodSuccessStoriesPage(Model model, HttpServletRequest request) 
	{	
		if(request.getSession().getAttribute("login_master_id") != null) 
		{

			System.out.println("login Page-->");
			model.addAttribute("successStory", new SuccessStory());
			logger.info("Returning empSave.jsp page");
			return "success_stories";

		} else {

		    return "redirect:/logoutLoad";

		}
	}

	@RequestMapping(value = "/skillTraining", method = RequestMethod.GET)
	public String skillTrainingPage(Model model, HttpServletRequest request) {
		if (request.getSession().getAttribute("login_master_id") != null) {

			System.out.println("login Page-->");
			model.addAttribute("skillAndTraining", new SkillAndTraining());
			logger.info("Returning empSave.jsp page");
			return "skill_training";

		} else {

			return "redirect:/logoutLoad";

		}
	}

	@RequestMapping(value = "/postSuccessStory", method = RequestMethod.POST)
	@ResponseBody
	public String postSuccessStory(@ModelAttribute("successStory") SuccessStory successStory, Model model,
			HttpServletRequest request) {
		if (request.getSession().getAttribute("login_master_id") != null) {

			String fileName = successStory.getPhoto().getOriginalFilename();

			String extnName = fileName.substring(fileName.lastIndexOf(".") + 1);
			
			logger.info("extnName==>>"+extnName);

			if (extnName.equals("png") ||  extnName.equals("jpeg") ) {

				String uploadPath = "/divyangjanUploads/successStories/";

				String fileDbPath = this.adminService.fileUpload(successStory.getPhoto(), successStory.getName(),
						uploadPath);

				logger.info("fileDbPath===>>" + fileDbPath);

				successStory.setDbPath(fileDbPath);

				int insertCount = this.adminService.postSuccessStory(successStory, request);

				if (insertCount > 0) {

					return "success";

				} else {
					return "fail";
				}
			} else {

				return "fileExtension";

			}

		} else {

			return "signout";

		}
	}

	@RequestMapping(value = "/skillAndTraining", method = RequestMethod.POST)
	@ResponseBody
	public String skillAndTraining(@ModelAttribute("skillAndTraining") SkillAndTraining skillAndTraining, Model model,
			HttpServletRequest request) {
		if (request.getSession().getAttribute("login_master_id") != null) {

			// logger.info(""+skillAndTraining.getCouresesOffered());

			int insertCount = this.adminService.postSkillAndTraining(skillAndTraining, request);

			// logger.info("insertcount===>>>>>" + insertCount);

			if (insertCount > 0) {

				return "success";
			} else {
				return "fail";
			}

		} else {

			return "signout";

		}
	}

}
