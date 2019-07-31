package com.spring.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.model.ApplyForJob;
import com.spring.model.CandidateCareerInfo;
import com.spring.model.CandidateContactInfo;
import com.spring.model.CandidateDisabilityInfo;
import com.spring.model.CandidateEducationInfo;
import com.spring.model.CandidateFamilyInfo;
import com.spring.model.CandidateHobbiesInfo;
import com.spring.model.CandidatePersonalInfo;
import com.spring.model.CandidateRegistration;
import com.spring.model.CandidateSkillsInfo;
import com.spring.model.JobPost;
import com.spring.model.Login;
import com.spring.model.MatrimonyPost;
import com.spring.model.SkillAndTraining;
import com.spring.service.PwdService;

@Controller
public class PwdController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	private PwdService pwdService;

	@Autowired(required = true)
	@Qualifier(value = "pwdService")
	public void setPwdService(PwdService ps) {
		this.pwdService = ps;
	}

	@RequestMapping(value = "/loadMatrimonypost", method = RequestMethod.GET)
	public String loadMatrimonyPage(Model model, HttpServletRequest request) {

		if (request.getSession().getAttribute("login_master_id") != null) {

			System.out.println("login Page-->");
			model.addAttribute("matrimonyPost", new MatrimonyPost());
			logger.info("Returning empSave.jsp page");
			return "matrimony_post";

		} else {

			return "redirect:/logoutLoad";

		}
	}

	@RequestMapping(value = "/loadJobpost", method = RequestMethod.GET)
	public String loadJobpostPage(Model model, HttpServletRequest request) {

		if (request.getSession().getAttribute("login_master_id") != null) {

			List<JobPost> jobsList = this.pwdService.jobsList();

			model.addAttribute("jobsList", jobsList);

			return "job_apply";

		} else {

			return "redirect:/logoutLoad";

		}

	}
	
	
	
	

	@RequestMapping(value = "/jobApplyDetails", method = RequestMethod.POST)
	public String jobApplyDetailsPage(Model model, HttpServletRequest request) {

		if (request.getSession().getAttribute("login_master_id") != null) {

			JobPost jobPost = this.pwdService.getJobDetails(Integer.parseInt(request.getParameter("jobId")));

			model.addAttribute("jobDetails", jobPost);

			model.addAttribute("jobId", request.getParameter("jobId"));

			model.addAttribute("applyForJob", new ApplyForJob());

			return "job_apply_details";

		} else {

			return "redirect:/logoutLoad";

		}

	}

	
	@RequestMapping(value = "/pwdProfileUpdate", method = RequestMethod.GET)
	public String pwdProfileUpdatePage(Model model, HttpServletRequest request) {

		if (request.getSession().getAttribute("login_master_id") != null) {

			int loginId = (Integer) request.getSession().getAttribute("login_master_id");

			Login login = this.pwdService.getLoginDetails(loginId);	

			CandidatePersonalInfo candidatePersonalInfo = this.pwdService.getCandidatePersonalInfo(loginId);
			CandidateContactInfo candidateContactInfo = this.pwdService.getCandidateContactInfo(loginId);
			CandidateFamilyInfo candidateFamilyInfo = this.pwdService.getCandidateFamilyInfo(loginId);
			CandidateEducationInfo candidateEducationInfo = new CandidateEducationInfo();
			CandidateHobbiesInfo candidateHobbiesInfo = this.pwdService.getCandidateHobbiesInfo(loginId);

			Map<String, String> gradList = this.pwdService.getGraduationType();
			Map<String, String> specList = this.pwdService.getSpecializationType();
			Map<String, String> disabilityType = this.pwdService.getDisabilityType();
			Map<String, String> industryType = this.pwdService.getIndustrtType();

			List<CandidateEducationInfo> candidateEducationInfoList = this.pwdService
					.getCandidateEducationInfo(loginId);

			List<CandidateDisabilityInfo> candidateDisabilityInfoList = this.pwdService
					.getCandidateDisabilityInfo(loginId);

			List<CandidateCareerInfo> candidateCareerInfoList = this.pwdService.getCandidateCareerInfo(loginId);

			List<CandidateSkillsInfo> candidateSkillInfoList = this.pwdService.getCandidateSkillInfo(loginId);

			model.addAttribute("login", login);
			model.addAttribute("candidatePersonalInfo", candidatePersonalInfo);
			model.addAttribute("candidateContactInfo", candidateContactInfo);
			model.addAttribute("candidateFamilyInfo", candidateFamilyInfo);
			model.addAttribute("candidateEducationInfo", candidateEducationInfo);
			model.addAttribute("gradList", gradList);
			model.addAttribute("specList", specList);
			model.addAttribute("disabilityType", disabilityType);
			model.addAttribute("industryType", industryType);
			model.addAttribute("candidateEducationInfoList", candidateEducationInfoList);
			model.addAttribute("candidateDisabilityInfoList", candidateDisabilityInfoList);
			model.addAttribute("candidateCareerInfoList", candidateCareerInfoList);
			model.addAttribute("candidateSkillInfoList", candidateSkillInfoList);
			model.addAttribute("candidateHobbiesInfo", candidateHobbiesInfo);

			request.setAttribute("candidateEducationInfoList", candidateEducationInfoList);
			request.setAttribute("candidateDisabilityInfoList", candidateDisabilityInfoList);
			request.setAttribute("candidateCareerInfoList", candidateCareerInfoList);
			request.setAttribute("candidateSkillInfoList", candidateSkillInfoList);

			// model.addAttribute("candidatePersonalInfo", new CandidatePersonalInfo());

			return "pwd_profile_update";

		} else {

			return "redirect:/logoutLoad";

		}

	}

	@RequestMapping(value = "/matrimonyPostDet", method = RequestMethod.POST)
	@ResponseBody
	public String matrimonyPostAction(@ModelAttribute("matrimonyPost") MatrimonyPost matrimonyPost, Model model,
			HttpServletRequest request, HttpSession session) {
		String response = "";

		if (request.getSession().getAttribute("login_master_id") != null) {

			System.out.println("matrimonyPost.getName()-->" + matrimonyPost.getName());

			int insertCount = this.pwdService.matrimonyPost(matrimonyPost, request);

			response = String.valueOf(insertCount);

			if (insertCount > 1) {
				return "success";
			} else {
				return "failure";
			}

		} else {

			return "signout";

		}

	}

	@RequestMapping(value = "/applyForJob", method = RequestMethod.POST)
	@ResponseBody
	public String applyForJobFileHandler(@ModelAttribute("applyForJob") ApplyForJob applyForJob, Model model,
			HttpServletRequest request, HttpSession session) {

		if (request.getSession().getAttribute("login_master_id") != null) {

			MultipartFile file = applyForJob.getResumeFile();

			System.out.println("file-->" + file);

			// System.out.println("getNameOne-->"+applyForJob.getNameOne());

			String name = "file_name";

			if (!file.isEmpty()) {
				try {

					byte[] bytes = file.getBytes();

					String fileName = file.getOriginalFilename();
					String contentType = file.getContentType();
					String extnName = fileName.substring(fileName.lastIndexOf(".") + 1);

					System.out.println(
							"fileName-->" + fileName + "---extnName-->" + extnName + "---contentType-->" + contentType);

					String dbPath = "/divyangjanUploads/jobPortal/" + fileName;

					fileName = fileName.substring(0, fileName.lastIndexOf("."));
					System.out.println(fileName);

					name = fileName;

					// Creating the directory to store file
					// String rootPath = System.getProperty("catalina.home");

					String rootPath = "E:/Tomcat8/webapps";

					File dir = new File(rootPath + File.separator + "divyangjanUploads" + File.separator + "jobPortal");

					if (!dir.exists())

						dir.mkdirs();

					// Create the file on server

					System.out.println("File Path-->" + dir.getAbsolutePath() + "---" + File.separator + "---" + name);

					// File serverFile = new File(dir.getAbsolutePath()+ File.separator +
					// name+".jpeg");
					File serverFile = new File(dir.getAbsolutePath() + File.separator + name + "." + extnName);

					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();

					logger.info("Server File Location=" + serverFile.getAbsolutePath());

					applyForJob.setDbFIlePath(dbPath);

					// System.out.println("applyForJob.getJobId()-->"+applyForJob.getJobId());

					int jobApplyCnt = this.pwdService.jobApply(applyForJob, request);

					if (jobApplyCnt > 0) {
						return "success";
					} else {
						return "failure";
					}

				} catch (Exception e) {
					return "You failed to upload " + name + " => " + e.getMessage();
				}
			} else {
				return "You failed to upload " + name + " because the file was empty.";
			}

		} else {

			return "signout";

		}

	}

	@RequestMapping(value = "/candidateRegistration", method = RequestMethod.POST)
	@ResponseBody
	public String candidateRegistration(
			@ModelAttribute("candidateRegistration") CandidateRegistration candidateRegistration, Model model,
			HttpServletRequest request, HttpSession session) {
		
		System.out.println("password"+candidateRegistration.getCandidatePassword());

		int insertCount = 0;

		System.out.println(candidateRegistration.getName());

		int i = this.pwdService.checkEmailAndPhoneNumber(candidateRegistration.getEmail(),
				candidateRegistration.getPhoneNumber());

		//System.out.println("i===>>" + i);

		if (i == 3) {

			insertCount = this.pwdService.candidateRegistration(candidateRegistration);

			//System.out.println("insertCount===>>" + insertCount);

		} else if (i == 1) {

			return "1";

		} else if (i == 2) {

			return "2";

		}

		if (insertCount > 0) {
			return "success";
		} else {
			return "fail";
		}

	}
	
	
	@RequestMapping(value = "/loadJobpostPublic", method = RequestMethod.GET)
	public String loadJobpostPublicPage(Model model, HttpServletRequest request) 
	{

			List<JobPost> jobsList = this.pwdService.jobsList();

			model.addAttribute("jobsList", jobsList);

			return "job_apply";

		
	}
	
	
	@RequestMapping(value = "/skillTrainingDet", method = RequestMethod.GET)
	public String loadLoggedinPage(Model model, HttpServletRequest request) 
	{
		if (request.getSession().getAttribute("login_master_id") != null) {
			
			List<SkillAndTraining> skillTrainingList = this.pwdService.skillAndTrainingList();

			model.addAttribute("skillTrainingList", skillTrainingList);

			return "skillTrainDetails";

		} else {

				return "redirect:/logoutLoad";

			}
		
	}
	
	
	

	@RequestMapping(value = "/personalInfoUpdate", method = RequestMethod.POST)
	@ResponseBody
	public String personalInfoUpdate(
			@ModelAttribute("candidatePersonalInfo") CandidatePersonalInfo candidatePersonalInfo, Model model,
			HttpServletRequest request) {

		if (request.getSession().getAttribute("login_master_id") != null) {

			int count = this.pwdService.updateCandidatePersonalInfo(candidatePersonalInfo, request);
			// logger.info("count==>>" + count);

			if (count > 0) {

				return "success";

			} else {

				return "fail";

			}

		} else {

			return "signout";

		}

	}

	@RequestMapping(value = "/ContactInfoUpdate", method = RequestMethod.POST)
	@ResponseBody
	public String ContactInfoUpdate(@ModelAttribute("candidateContactInfo") CandidateContactInfo candidateContactInfo,
			Model model, HttpServletRequest request) {

		if (request.getSession().getAttribute("login_master_id") != null) {

			int count = this.pwdService.updateCandidateContactInfo(candidateContactInfo, request);

			if (count > 0) {

				return "success";

			} else {

				return "fail";

			}

		} else {

			return "signout";

		}

	}

	@RequestMapping(value = "/FamilyInfoUpdate", method = RequestMethod.POST)
	@ResponseBody
	public String FamilyInfoUpdate(@ModelAttribute("candidateFamilyInfo") CandidateFamilyInfo candidateFamilyInfo,
			Model model, HttpServletRequest request) {

		if (request.getSession().getAttribute("login_master_id") != null) {

			int count = this.pwdService.updateCandidateFamilyInfo(candidateFamilyInfo, request);

			if (count > 0) {

				return "success";

			} else {

				return "fail";

			}

		} else {

			return "signout";

		}

	}

	@RequestMapping(value = "/EducationInfoUpdate", method = RequestMethod.POST)
	@ResponseBody
	public String EducationInfoUpdate(Model model, HttpServletRequest request) {

		if (request.getSession().getAttribute("login_master_id") != null) {

			int eduInfoCount = Integer.parseInt(request.getParameter("educationSkill"));

			List<CandidateEducationInfo> candidateEducationInfoList = new ArrayList<CandidateEducationInfo>();

			for (int i = 1; i <= eduInfoCount; i++) {

				CandidateEducationInfo candidateEducationInfo = new CandidateEducationInfo();

				// logger.info("" + i);

				candidateEducationInfo.setQualification(request.getParameter("qualification" + i));
				candidateEducationInfo.setYearOfQualification(request.getParameter("yearOfQualification" + i));
				candidateEducationInfo.setInstitution(request.getParameter("institution" + i));
				candidateEducationInfo.setUniversity(request.getParameter("university" + i));
				candidateEducationInfo.setGraduationType(request.getParameter("graduationType" + i));
				candidateEducationInfo.setGraduationArea(request.getParameter("graduationArea" + i));
				candidateEducationInfo.setPercentage(request.getParameter("percentage" + i));
				candidateEducationInfo.setRemarks(request.getParameter("remarks" + i));

				// logger.info("candidateEducationInfo==>>" +
				// candidateEducationInfo.getQualification());

				candidateEducationInfoList.add(candidateEducationInfo);

			}

			int count = this.pwdService.updateCandidateEducationInfo(candidateEducationInfoList, request);

			if (count > 0) {

				return "success";

			} else {

				return "fail";

			}

			// logger.info("candidateEducationInfoList==>>" + candidateEducationInfoList);

		} else {

			return "signout";

		}

	}

	@RequestMapping(value = "/DisabilityInfoUpdate", method = RequestMethod.POST)
	@ResponseBody
	public String DisabilityInfoUpdate(@RequestParam("disabilityCertificate") MultipartFile[] files, Model model,
			HttpServletRequest request) {

		if (request.getSession().getAttribute("login_master_id") != null) {

			int loginId = (Integer) request.getSession().getAttribute("login_master_id");

			logger.info("disabilityTypeCount" + files.length);

			int extensionFlag = 1;

			int insertCount = 0;

			List<CandidateDisabilityInfo> candidateDisabilityInfoList = new ArrayList<CandidateDisabilityInfo>();

			for (int i = 1; i <= files.length; i++) {

				CandidateDisabilityInfo candidateDisabilityInfo = new CandidateDisabilityInfo();

				candidateDisabilityInfo.setDisabilityCategory(request.getParameter("disabilityCategory" + i));
				candidateDisabilityInfo.setDisabilityType(request.getParameter("disabilityType" + i));
				candidateDisabilityInfo.setDisabilityPercentage(request.getParameter("disabilityPercentage" + i));
				candidateDisabilityInfo.setDisabilityCertificate(files[i - 1]);

				candidateDisabilityInfoList.add(candidateDisabilityInfo);

				String fileName = candidateDisabilityInfo.getDisabilityCertificate().getOriginalFilename();

				logger.info("fileName" + fileName);

				String extnName = fileName.substring(fileName.lastIndexOf(".") + 1);

				if (!(extnName.equals("png") || extnName.equals("jpeg") || extnName.equals("pdf"))) {

					extensionFlag = 0;

				}

			}

			if (extensionFlag != 0) {

				for (int i = 0; i < files.length; i++) {

					String uploadPath = "/divyangjanUploads/DisabilityCertificate/";

					String fileDbPath = this.pwdService.fileUpload(
							candidateDisabilityInfoList.get(i).getDisabilityCertificate(),
							loginId + "_" + candidateDisabilityInfoList.get(i).getDisabilityType(), uploadPath);

					logger.info("fileDbPath===>>" + fileDbPath);

					candidateDisabilityInfoList.get(i).setCertificatePath(fileDbPath);

					insertCount = this.pwdService.updateCandidateDisabilityDetails(candidateDisabilityInfoList,
							request);

				}

			} else {

				return "fileExtension";

			}

			if (insertCount > 0) {

				return "success";

			} else {
				return "fail";
			}

		}

		else {

			return "signout";

		}

	}

	@RequestMapping(value = "/CareerInfoUpdate", method = RequestMethod.POST)
	@ResponseBody
	public String CareerInfoUpdate(Model model, HttpServletRequest request) {

		List<CandidateCareerInfo> candidateCareerInfoList = new ArrayList<CandidateCareerInfo>();

		int count = 0;

		if (request.getSession().getAttribute("login_master_id") != null) {

			int careerCount = Integer.parseInt(request.getParameter("careerCount"));

			logger.info("careerCount==>>" + careerCount);

			for (int i = 1; i <= careerCount; i++) {

				CandidateCareerInfo candidateCareerInfo = new CandidateCareerInfo();

				candidateCareerInfo.setDesignationName(request.getParameter("designationName" + i));
				candidateCareerInfo.setStartDate(request.getParameter("startDate" + i));
				candidateCareerInfo.setEndDate(request.getParameter("endDate" + i));
				if (request.getParameter("currentlyWorking" + i).equals("1")) {
					candidateCareerInfo.setCurrentlyWorking("1");
				} else {
					candidateCareerInfo.setCurrentlyWorking("0");
				}
				candidateCareerInfo.setCompany(request.getParameter("company" + i));
				candidateCareerInfo.setLocation(request.getParameter("location" + i));
				candidateCareerInfo.setCourseType(request.getParameter("courseType" + i));
				candidateCareerInfo.setIndustryType(request.getParameter("industryType" + i));
				candidateCareerInfo.setCareerRemarks(request.getParameter("careerRemarks" + i));

				//logger.info("candidateCareerInfo==>>" + candidateCareerInfo.getEndDate());
				//logger.info("candidateCareerInfo==>>" + candidateCareerInfo.getCurrentlyWorking());

				candidateCareerInfoList.add(candidateCareerInfo);

				count = this.pwdService.updateCandidateCareerInfo(candidateCareerInfoList, request);

			}

			if (count > 0) {

				return "success";

			} else {

				return "fail";

			}

		} else {

			return "signout";

		}

	}

	@RequestMapping(value = "/SkillInfoUpdate", method = RequestMethod.POST)
	@ResponseBody
	public String SkillInfoUpdate(Model model, HttpServletRequest request) {

		List<CandidateSkillsInfo> candidateSkillsInfoList = new ArrayList<CandidateSkillsInfo>();

		int count = 0;

		if (request.getSession().getAttribute("login_master_id") != null) {

			int skillCount = Integer.parseInt(request.getParameter("skillCount"));

			for (int i = 1; i <= skillCount; i++) {

				CandidateSkillsInfo candidateSkillsInfo = new CandidateSkillsInfo();

				candidateSkillsInfo.setSkillName(request.getParameter("skillName" + i));
				candidateSkillsInfo.setSkillExperiencre(request.getParameter("skillExperiencre" + i));
				candidateSkillsInfo.setTrainingType(request.getParameter("trainingType" + i));

				candidateSkillsInfoList.add(candidateSkillsInfo);

			}

			count = this.pwdService.updateCandidateSkillInfo(candidateSkillsInfoList, request);

			if (count > 0) {

				return "success";

			} else {

				return "fail";

			}

		} else {

			return "signout";

		}

	}

	@RequestMapping(value = "/HobbieInfoUpdate", method = RequestMethod.POST)
	@ResponseBody
	public String HobbieInfoUpdate(@ModelAttribute("candidateHobbiesInfo") CandidateHobbiesInfo candidateHobbiesInfo,
			Model model, HttpServletRequest request) {

		if (request.getSession().getAttribute("login_master_id") != null) {

			if (candidateHobbiesInfo.getDrinking() == null ) {

				candidateHobbiesInfo.setDrinking("0");

			}

			if (candidateHobbiesInfo.getSmoking() == null ) {

				candidateHobbiesInfo.setSmoking("0");

			}

			int count = this.pwdService.updateCandidateHobbieInfo(candidateHobbiesInfo, request);

			if (count > 0) {

				return "success";

			} else {

				return "fail";

			}

		} else {

			return "signout";

		}

	}
	
	

}
