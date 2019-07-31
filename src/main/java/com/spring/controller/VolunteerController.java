package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.model.MatrimonyPost;
import com.spring.model.VolunteerRegistration;
import com.spring.service.PwdService;
import com.spring.service.VolunteerService;

@Controller
public class VolunteerController {

	private static final Logger logger = LoggerFactory.getLogger(VolunteerController.class);

	private VolunteerService volunteerService;

	@Autowired(required = true)
	@Qualifier(value = "volunteerService")
	public void setVolunteerService(VolunteerService volunteerService) {
		this.volunteerService = volunteerService;
	}

	@RequestMapping(value = "/volunteerRegistration", method = RequestMethod.POST)
	@ResponseBody
	public String volunteerRegistration(
			@ModelAttribute("volunteerRegistration") VolunteerRegistration volunteerRegistration, Model model,
			HttpServletRequest request, HttpSession session) {

		int insertCount = this.volunteerService.volunteerRegistration(volunteerRegistration);

		return "" + insertCount;
	}

}
