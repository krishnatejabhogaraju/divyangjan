package com.spring.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.spring.dao.PwdDAO;
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

@Service
public class PwdServiceImpl implements PwdService {

	private PwdDAO pwdDAO;

	public void setPwdDAO(PwdDAO pwdDAO) {
		this.pwdDAO = pwdDAO;
	}

	@Override
	@Transactional
	public int matrimonyPost(MatrimonyPost matrimony, HttpServletRequest request) {
		int matrimonyCnt = this.pwdDAO.matrimonyPost(matrimony, request);
		return matrimonyCnt;
	}

	@Override
	@Transactional
	public int jobApply(ApplyForJob applyForJob, HttpServletRequest request) {

		int jobApplyCnt = this.pwdDAO.jobApply(applyForJob, request);
		return jobApplyCnt;

	}

	@Override
	@Transactional
	public List<JobPost> jobsList() {

		List<JobPost> jobsList = this.pwdDAO.jobsList();

		return jobsList;
	}

	@Override
	@Transactional
	public JobPost getJobDetails(int jobId) {

		JobPost jobPost = this.pwdDAO.getJobDetails(jobId);

		return jobPost;
	}

	@Override
	@Transactional
	public int checkEmailAndPhoneNumber(String email, String phoneNumber) {

		int i = this.pwdDAO.checkEmailAndPhoneNumber(email, phoneNumber);

		return i;
	}

	@Override
	@Transactional
	public int candidateRegistration(CandidateRegistration candidateregistration) {

		int i = this.pwdDAO.candidateRegistration(candidateregistration);
		return i;
	}
	
	@Override
	@Transactional
	public List<SkillAndTraining> skillAndTrainingList() {

		List<SkillAndTraining> skillAndTrainingList = this.pwdDAO.skillAndTrainingList();

		return skillAndTrainingList;
	}

	
	@Override
	@Transactional
	public Login getLoginDetails(int loginMasterId) {

		Login login = this.pwdDAO.getLoginDetails(loginMasterId);

		return login;

	}

	@Override
	@Transactional
	public int updateCandidatePersonalInfo(CandidatePersonalInfo candidatePersonalInfo, HttpServletRequest request) {

		int i = this.pwdDAO.updateCandidatePersonalInfo(candidatePersonalInfo, request);

		return i;
	}

	@Override
	@Transactional
	public CandidatePersonalInfo getCandidatePersonalInfo(int loginId) {

		CandidatePersonalInfo candidatePersonalInfo = this.pwdDAO.getCandidatePersonalInfo(loginId);

		return candidatePersonalInfo;

	}

	@Override
	@Transactional
	public int updateCandidateContactInfo(CandidateContactInfo candidateContactInfo, HttpServletRequest request) {

		int i = this.pwdDAO.updateCandidateContactInfo(candidateContactInfo, request);

		return i;
	}

	@Override
	@Transactional
	public CandidateContactInfo getCandidateContactInfo(int loginId) {
		CandidateContactInfo candidateContactInfo = this.pwdDAO.getCandidateContactInfo(loginId);
		return candidateContactInfo;
	}

	@Override
	@Transactional
	public int updateCandidateFamilyInfo(CandidateFamilyInfo candidateFamilyInfo, HttpServletRequest request) {

		int i = this.pwdDAO.updateCandidateFamilyInfo(candidateFamilyInfo, request);

		return i;

	}

	@Override
	@Transactional
	public CandidateFamilyInfo getCandidateFamilyInfo(int loginId) {
		CandidateFamilyInfo candidateFamilyInfo = this.pwdDAO.getCandidateFamilyInfo(loginId);
		return candidateFamilyInfo;
	}

	@Override
	@Transactional
	public Map<String, String> getGraduationType() {

		Map<String, String> gradList = this.pwdDAO.getGraduationType();
		return gradList;
	}

	@Override
	@Transactional
	public Map<String, String> getSpecializationType() {

		Map<String, String> specList = this.pwdDAO.getSpecializationType();
		return specList;
	}

	@Override
	@Transactional
	public int updateCandidateEducationInfo(List<CandidateEducationInfo> candidateEducationInfoList,
			HttpServletRequest request) {

		int i = this.pwdDAO.updateCandidateEducationInfo(candidateEducationInfoList, request);

		return i;
	}

	@Override
	@Transactional
	public List<CandidateEducationInfo> getCandidateEducationInfo(int loginId) {

		List<CandidateEducationInfo> candidateEducationInfo = this.pwdDAO.getCandidateEducationInfo(loginId);

		return candidateEducationInfo;

	}

	@Override
	@Transactional
	public Map<String, String> getDisabilityType() {

		Map<String, String> getDisabilityTypeMap = this.pwdDAO.getDisabilityType();

		return getDisabilityTypeMap;

	}

	@Override
	@Transactional
	public List<CandidateDisabilityInfo> getCandidateDisabilityInfo(int loginId) {

		List<CandidateDisabilityInfo> getCandidateDisabilityInfo = this.pwdDAO.getCandidateDisabilityInfo(loginId);

		return getCandidateDisabilityInfo;

	}

	@Override
	@Transactional
	public String fileUpload(MultipartFile file, String name, String path) {

		String s = this.pwdDAO.fileUpload(file, name, path);

		return s;
	}

	@Override
	@Transactional
	public int updateCandidateDisabilityDetails(List<CandidateDisabilityInfo> candidateDisabilityInfoList,
			HttpServletRequest request) {

		int i = this.pwdDAO.updateCandidateDisabilityDetails(candidateDisabilityInfoList, request);

		return i;

	}

	@Override
	@Transactional
	public List<CandidateCareerInfo> getCandidateCareerInfo(int loginId) {

		List<CandidateCareerInfo> getCandidateCareerInfo = this.pwdDAO.getCandidateCareerInfo(loginId);

		return getCandidateCareerInfo;

	}

	@Override
	@Transactional
	public Map<String, String> getIndustrtType() {

		Map<String, String> getIndustrtType = this.pwdDAO.getIndustrtType();

		return getIndustrtType;

	}

	@Override
	@Transactional
	public int updateCandidateCareerInfo(List<CandidateCareerInfo> candidateCareerInfoList,
			HttpServletRequest request) {

		int i = this.pwdDAO.updateCandidateCareerInfo(candidateCareerInfoList, request);

		return i;

	}

	@Override
	@Transactional
	public List<CandidateSkillsInfo> getCandidateSkillInfo(int loginId) {

		List<CandidateSkillsInfo> getCandidateSkillInfo = this.pwdDAO.getCandidateSkillInfo(loginId);

		return getCandidateSkillInfo;
	}

	@Override
	@Transactional
	public int updateCandidateSkillInfo(List<CandidateSkillsInfo> candidateSkillInfoList, HttpServletRequest request) {

		int i = this.pwdDAO.updateCandidateSkillInfo(candidateSkillInfoList, request);

		return i;

	}

	@Override
	@Transactional
	public int updateCandidateHobbieInfo(CandidateHobbiesInfo candidateHobbiesInfo, HttpServletRequest request) {

		int i = this.pwdDAO.updateCandidateHobbieInfo(candidateHobbiesInfo, request);

		return i;
	}

	@Override
	@Transactional
	public CandidateHobbiesInfo getCandidateHobbiesInfo(int loginId) {
		CandidateHobbiesInfo candidateHobbiesInfo = this.pwdDAO.getCandidateHobbiesInfo(loginId);

		return candidateHobbiesInfo;

	}
	
	
}
