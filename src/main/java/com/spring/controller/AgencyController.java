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
import com.spring.model.OrganizationRegistration;
import com.spring.service.AgencyService;
import com.spring.service.LoginService;


@Controller
public class AgencyController 
{

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	private AgencyService agencyService;

	@Autowired(required = true)
	@Qualifier(value = "agencyService")
	public void setLoginService(AgencyService agencyService) {
		this.agencyService = agencyService;
	}
	
	
	@RequestMapping(value = "/laodJobpost", method = RequestMethod.GET)
	public String loginUserPage(Model model,HttpServletRequest request) 
	{	
		if(request.getSession().getAttribute("login_master_id") != null) 
		{
		
		System.out.println("login Page-->");
		model.addAttribute("jobPost", new JobPost());
		logger.info("Returning empSave.jsp page");
		return "job_post";
		
		} else {

			return "redirect:/logoutLoad";

		}
	}

	@RequestMapping(value = "/submitJobPost", method = RequestMethod.POST)
	@ResponseBody
	public String submitJobPost(@ModelAttribute("jobPost") JobPost jobPost, HttpServletRequest request,
			HttpSession session, BindingResult results) {

		int createCount = 0;
		String respose="";
		
		if(request.getSession().getAttribute("login_master_id") != null) 
		{

		try {

			System.out.println(jobPost.getDisabilityType());

			createCount = this.agencyService.jobPost(jobPost);

		} catch (Exception e) {

			System.out.println(e.getMessage());

		}

		
		 
		if (createCount == 1) {

			respose="success";

		} else {

			respose="failure";

		}
      
		
		}else {
			
			respose="signout";
		}
		
		return respose;
	}
	
	
	@RequestMapping(value = "/organizationRegistration", method = RequestMethod.POST)
	@ResponseBody
	public String organizationRegistration(@ModelAttribute("organizationRegistration") OrganizationRegistration organizationRegistration, Model model,
			HttpServletRequest request, HttpSession session) {

		int count = this.agencyService.organizationRegistration(organizationRegistration);

		return "" + count;

	}
	
	
}
