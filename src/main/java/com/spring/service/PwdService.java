package com.spring.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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

public interface PwdService {

	public int matrimonyPost(MatrimonyPost matrimony, HttpServletRequest request);

	public int jobApply(ApplyForJob applyForJob, HttpServletRequest request);

	public List<JobPost> jobsList();

	public JobPost getJobDetails(int jobId);
	
	public int checkEmailAndPhoneNumber(String email,String phoneNumber);
	
	public int candidateRegistration(CandidateRegistration candidateregistration);
	
	public List<SkillAndTraining> skillAndTrainingList();
	
	
	public Login getLoginDetails(int loginMasterId);

	public int updateCandidatePersonalInfo(CandidatePersonalInfo candidatePersonalInfo, HttpServletRequest request);

	public CandidatePersonalInfo getCandidatePersonalInfo(int loginId);

	public int updateCandidateContactInfo(CandidateContactInfo candidateContactInfo, HttpServletRequest request);

	public CandidateContactInfo getCandidateContactInfo(int loginId);

	public int updateCandidateFamilyInfo(CandidateFamilyInfo candidateFamilyInfo, HttpServletRequest request);

	public CandidateFamilyInfo getCandidateFamilyInfo(int loginId);

	public Map<String, String> getGraduationType();

	public Map<String, String> getSpecializationType();

	public int updateCandidateEducationInfo(List<CandidateEducationInfo> candidateEducationInfoList,
			HttpServletRequest request);

	public List<CandidateEducationInfo> getCandidateEducationInfo(int loginId);

	public Map<String, String> getDisabilityType();

	public List<CandidateDisabilityInfo> getCandidateDisabilityInfo(int loginId);

	public String fileUpload(MultipartFile file, String name, String path);

	public int updateCandidateDisabilityDetails(List<CandidateDisabilityInfo> candidateDisabilityInfoList,
			HttpServletRequest request);

	public List<CandidateCareerInfo> getCandidateCareerInfo(int loginId);

	public Map<String, String> getIndustrtType();

	public int updateCandidateCareerInfo(List<CandidateCareerInfo> candidateCareerInfoList, HttpServletRequest request);

	public List<CandidateSkillsInfo> getCandidateSkillInfo(int loginId);

	public int updateCandidateSkillInfo(List<CandidateSkillsInfo> candidateSkillInfoList, HttpServletRequest request);

	public int updateCandidateHobbieInfo(CandidateHobbiesInfo candidateHobbiesInfo, HttpServletRequest request);

	public CandidateHobbiesInfo getCandidateHobbiesInfo(int loginId);
}
