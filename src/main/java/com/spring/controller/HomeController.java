package com.spring.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.model.CandidateRegistration;
import com.spring.model.Login;
import com.spring.model.VolunteerRegistration;
import com.spring.model.OrganizationRegistration;
import com.spring.model.SkillAndTraining;
import com.spring.model.SuccessStory;
import com.spring.service.AgencyService;
import com.spring.service.HomeService;
import com.spring.service.PwdService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	private AgencyService agencyService;
	
	@Autowired(required = true)
	@Qualifier(value = "agencyService")
	public void setAgencyService(AgencyService agencyService) {
		this.agencyService = agencyService;
	}
	
	
	private HomeService homeService;

	@Autowired(required = true)
	@Qualifier(value = "homeService")
	public void setHomeService(HomeService homeService) {
		this.homeService = homeService;
	}

	private PwdService pwdService;

	@Autowired(required = true)
	@Qualifier(value = "pwdService")
	public void setPwdService(PwdService ps) {
		this.pwdService = ps;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) 
	{
		logger.info("Welcome home! The client locale is {}.", locale);
		
		/*Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );*/
				
		
		return "redirect:/indexPage";
	}
	
	@RequestMapping(value = "/{urlString}", method = RequestMethod.GET)
	
	public String urlRedirectMethod(@PathVariable("urlString") String urlString,Locale locale, Model model) 
	{	
		logger.info("Url Redirecting Method Called.....");
		logger.info("urlString-->"+urlString);
				
		
		String urlLink="";
		
		if(urlString.equals("indexPage"))
		{	 
			model.addAttribute("login", new Login());
			List<SuccessStory> successStories = this.homeService.successStories();

			model.addAttribute("successStories", successStories);
			urlLink = "index";
			
		}else if(urlString.equals("aboutUsPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="AboutUs";
			
		}else if(urlString.equals("schemesPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="Schemes";
			
		}else if(urlString.equals("contactUsPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="ActsRules";
			
		}else if(urlString.equals("healthCarePage"))
		{
			model.addAttribute("login", new Login());
			urlLink="HealthCare";
		}
		else if(urlString.equals("rehabilitationPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="Rehabilitation";
		}
		else if(urlString.equals("educationPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="Education";
		}
		else if(urlString.equals("skillTrainingPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="SkillTraining";
		}
		else if(urlString.equals("elearningContentPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="ELearningContent";
		}
		else if(urlString.equals("empPrivateSectorPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="EmpPrivateSector";
		}
		else if(urlString.equals("empPublicSectorPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="EmpPublicSector";
		}
		else if(urlString.equals("selfEmploymentPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="SelfEmployment";
		}
		else if(urlString.equals("accessibilityPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="Accessibility";
		}
		else if(urlString.equals("pwDEntitlementsPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="PwDEntitlements";
		}
		else if(urlString.equals("knowledgeBankPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="KnowledgeBank";
		}
		else if(urlString.equals("matrimonySupportPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="MatrimonySupport";
		}
		else if(urlString.equals("pwDEntertainmentPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="PwDEntertainment";
		}
		else if(urlString.equals("pwDSportsPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="PwDSports";
			
		}else if(urlString.equals("pwDTalentcornerPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="PwDTalentcorner";
			
		}else if(urlString.equals("pwdRegistrationPage"))
		{
			model.addAttribute("login", new Login());
			model.addAttribute("candidateRegistration", new CandidateRegistration());
			urlLink="pwd_registration";
		}
		else if(urlString.equals("volunteerPage"))
		{
			model.addAttribute("login", new Login());
			model.addAttribute("volunteerRegistration", new VolunteerRegistration());
			urlLink="volunteer_registration";
			
		}else if (urlString.equals("organizationPage")) {
			
			Map<String, String> industryList = this.agencyService.getIndustrtType();
			model.addAttribute("login", new Login());
			model.addAttribute("organizationRegistration", new OrganizationRegistration());
			model.addAttribute("industryList", industryList);

			urlLink = "organization_registration";
			
		}else if(urlString.equals("publicServicesPage"))
		{
			model.addAttribute("login", new Login());
			urlLink="public_services";
			
		}else if(urlString.equals("trainingDetPage"))
		{
			
			model.addAttribute("login", new Login());
			List<SkillAndTraining> skillTrainingList = this.pwdService.skillAndTrainingList();

			model.addAttribute("skillTrainingList", skillTrainingList);
			urlLink="skill_training_services";
			
		}
		
		
		 return urlLink;
	}
	
	
	
}
