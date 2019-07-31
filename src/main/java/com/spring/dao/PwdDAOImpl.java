package com.spring.dao;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.spring.mappers.CandidateCareerInfoMapper;
import com.spring.mappers.CandidateContactInfoMapper;
import com.spring.mappers.CandidateDisabilityInfoMapper;
import com.spring.mappers.CandidateEducationInfoMapper;
import com.spring.mappers.CandidateFamilyInfoMapper;
import com.spring.mappers.CandidateHobbiesInfoMapper;
import com.spring.mappers.CandidateLoginMapper;
import com.spring.mappers.CandidatePersonalInfoMapper;
import com.spring.mappers.CandidateSkillInfoMapper;
import com.spring.mappers.DisabilityTypeMapper;
import com.spring.mappers.GraduationTypeMapper;
import com.spring.mappers.IndustryMapper;
import com.spring.mappers.JobPostMapper;
import com.spring.mappers.LoginMapper;
import com.spring.mappers.SkillAndTrainingMapper;
import com.spring.mappers.SpeciliazationTypeMapper;
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
import com.spring.model.DisabilityType;
import com.spring.model.GraduationType;
import com.spring.model.Industry;
import com.spring.model.JobPost;
import com.spring.model.Login;
import com.spring.model.MatrimonyPost;
import com.spring.model.SkillAndTraining;
import com.spring.model.SpecializationType;

@Repository
public class PwdDAOImpl implements PwdDAO {

	private static final Logger logger = LoggerFactory.getLogger(LoginDAOImpl.class);

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public int matrimonyPost(MatrimonyPost matrimony, HttpServletRequest request) {
		int insertCount = 0;

		String roleMasterId = "";

		if (request.getSession().getAttribute("login_master_id") != null) {

			roleMasterId = request.getSession().getAttribute("login_master_id").toString();
		}

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "insert into matrimony_apply(name,gender,dob,religion,mother_tongue,caste_devision,mobile_number,email,login_master_id,edateTime,udateTime) values(?,?,?,?,?,?,?,?,?,GETDATE(),GETDATE())";

		Object[] args = new Object[] { matrimony.getName(), matrimony.getGender(), matrimony.getDateOfBirth(),
				matrimony.getReligion(), matrimony.getMotherTongue(), matrimony.getCasteDivision(),
				matrimony.getMobileNumber(), matrimony.getEmail(), roleMasterId };

		insertCount = jdbcTemplate.update(query, args);

		return insertCount;
	}

	@Override
	public int jobApply(ApplyForJob applyForJob, HttpServletRequest request) {
		int jobApplyCnt = 0;

		String roleMasterId = "";
		String postId = "60";
		if (request.getSession().getAttribute("login_master_id") != null) {

			roleMasterId = request.getSession().getAttribute("login_master_id").toString();
		}

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "insert into job_apply(resusme_path,job_post_id,login_master_id,edateTime,udateTime) values(?,?,?,GETDATE(),GETDATE())";

		Object[] args = new Object[] { applyForJob.getDbFIlePath(), applyForJob.getJobId(), roleMasterId };

		jobApplyCnt = jdbcTemplate.update(query, args);

		return jobApplyCnt;
	}

	@Override
	public List<JobPost> jobsList() {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "select * from job_post";
		List<JobPost> jobposts = jdbcTemplate.query(query, new JobPostMapper());

		return jobposts;

	}

	@Override
	public JobPost getJobDetails(int jobId) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "select * from job_post where job_post_id=?";

		JobPost jobPost = jdbcTemplate.queryForObject(query, new Object[] { jobId }, new JobPostMapper());

		return jobPost;
	}

	@Override
	public int checkEmailAndPhoneNumber(String email, String phoneNumber) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from login_master WHERE phone_number=?";

		List<CandidateRegistration> loginList = jdbcTemplate.query(query, new Object[] { phoneNumber }, new CandidateLoginMapper());

		String query1 = "SELECT * from login_master WHERE e_mail=?";

		List<CandidateRegistration> loginList1 = jdbcTemplate.query(query1, new Object[] { email }, new CandidateLoginMapper());

		if (!loginList.isEmpty()) {

			return 1; // Phone Number Exists

		} else if (!loginList1.isEmpty()) {

			return 2; // Email Exists

		} else {

			return 3; // Phone Number and Email Does not exist
		}

	}

	@Override
	public int candidateRegistration(CandidateRegistration candidateregistration) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "INSERT INTO login_master (phone_number, e_mail, password, role_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,'1','Y',GETDATE(),GETDATE())";

		Object[] args = new Object[] {candidateregistration.getPhoneNumber(),candidateregistration.getEmail(),candidateregistration.getCandidatePassword()};

		int insertCount = jdbcTemplate.update(query, args);

		return insertCount;
	}

	
	
	@Override
	public List<SkillAndTraining> skillAndTrainingList() {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "select * from training_details";
		
		List<SkillAndTraining> skillAndTrainingList = jdbcTemplate.query(query, new SkillAndTrainingMapper());

		return skillAndTrainingList;

	}
	
	
	@Override
	 
	public Login getLoginDetails(int loginMasterId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from login_master WHERE login_master_id=?";

		Login login = jdbcTemplate.queryForObject(query, new Object[] { loginMasterId }, new LoginMapper());

		return login;
	}

	@Override
	 
	public int updateCandidatePersonalInfo(CandidatePersonalInfo candidatePersonalInfo, HttpServletRequest request) {

		int loginId = (Integer) request.getSession().getAttribute("login_master_id");

		int count = 0;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from user_profile_personal WHERE login_master_id=?";

		List<CandidatePersonalInfo> candidatePersonalInfoList = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidatePersonalInfoMapper());

		if (candidatePersonalInfoList.isEmpty()) {

			String query1 = "INSERT INTO user_profile_personal (title, first_name, middle_name, last_name, dob, age, gender, phone_number, email, blood_group, marital_status, login_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,'Y',GETDATE(),GETDATE())";

			Object[] args = new Object[] { candidatePersonalInfo.getTitle(), candidatePersonalInfo.getFirstName(),
					candidatePersonalInfo.getMiddleName(), candidatePersonalInfo.getLastName(),
					candidatePersonalInfo.getDateOfBirth(), candidatePersonalInfo.getAge(),
					candidatePersonalInfo.getGender(), candidatePersonalInfo.getPhoneNumber(),
					candidatePersonalInfo.getEmail(), candidatePersonalInfo.getBloodGroup(),
					candidatePersonalInfo.getMartialStatus(), loginId };

			count = jdbcTemplate.update(query1, args);

		} else {

			String query1 = "UPDATE user_profile_personal SET title=?, first_name=?, middle_name=?, last_name=?, dob=?, age=?, gender=?, blood_group=?, marital_status=?,udateTime=GETDATE() WHERE login_master_id=?";

			Object[] args = new Object[] { candidatePersonalInfo.getTitle(), candidatePersonalInfo.getFirstName(),
					candidatePersonalInfo.getMiddleName(), candidatePersonalInfo.getLastName(),
					candidatePersonalInfo.getDateOfBirth(), candidatePersonalInfo.getAge(),
					candidatePersonalInfo.getGender(), candidatePersonalInfo.getBloodGroup(),
					candidatePersonalInfo.getMartialStatus(), loginId };

			count = jdbcTemplate.update(query1, args);

		}

		// logger.info("count==>>"+count);

		return count;
	}

	@Override
	 
	public CandidatePersonalInfo getCandidatePersonalInfo(int loginId) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from user_profile_personal WHERE login_master_id=?";

		List<CandidatePersonalInfo> candidatePersonalInfoList = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidatePersonalInfoMapper());

		if (!candidatePersonalInfoList.isEmpty()) {

			CandidatePersonalInfo CandidatePersonalInfo = new CandidatePersonalInfo();

			CandidatePersonalInfo = candidatePersonalInfoList.get(0);

			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

			try {
				Date dateOfBirth = format.parse(CandidatePersonalInfo.getDateOfBirth());
				CandidatePersonalInfo.setDateOfBirth(format.format(dateOfBirth));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return CandidatePersonalInfo;

		} else {

			CandidatePersonalInfo CandidatePersonalInfo = new CandidatePersonalInfo();
			return CandidatePersonalInfo;
		}

	}

	@Override
	 
	public int updateCandidateContactInfo(CandidateContactInfo candidateContactInfo, HttpServletRequest request) {

		int loginId = (Integer) request.getSession().getAttribute("login_master_id");

		int count = 0;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from user_profile_contact WHERE login_master_id=?";

		List<CandidateContactInfo> candidateContactInfoList = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateContactInfoMapper());

		if (candidateContactInfoList.isEmpty()) {

			String query1 = "INSERT INTO user_profile_contact (phone_number, tel_no, per_door_no, per_street_line, per_location, per_city, per_land_mark, res_door_no, res_street_line, res_location, res_city, res_land_mark, login_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,'Y',GETDATE(),GETDATE())";

			Object[] args = new Object[] { candidateContactInfo.getPrimaryPhoneNumber(),
					candidateContactInfo.getTelephoneNumber(), candidateContactInfo.getPermanentDoorNo(),
					candidateContactInfo.getPermanentStreet(), candidateContactInfo.getPermanentLocation(),
					candidateContactInfo.getPermanentCity(), candidateContactInfo.getPermanentLandMark(),
					candidateContactInfo.getCurrentDoorNo(), candidateContactInfo.getCurrentStreet(),
					candidateContactInfo.getCurrentLocation(), candidateContactInfo.getCurrentCity(),
					candidateContactInfo.getCurrentLandMark(), loginId };

			count = jdbcTemplate.update(query1, args);

		} else {

			String query1 = "UPDATE user_profile_contact SET  tel_no=?, per_door_no=?, per_street_line=?, per_location=?, per_city=?, per_land_mark=?, res_door_no=?, res_street_line=?, res_location=?, res_city=?, res_land_mark=?,udateTime=GETDATE() WHERE login_master_id=?";

			Object[] args = new Object[] { candidateContactInfo.getTelephoneNumber(),
					candidateContactInfo.getPermanentDoorNo(), candidateContactInfo.getPermanentStreet(),
					candidateContactInfo.getPermanentLocation(), candidateContactInfo.getPermanentCity(),
					candidateContactInfo.getPermanentLandMark(), candidateContactInfo.getCurrentDoorNo(),
					candidateContactInfo.getCurrentStreet(), candidateContactInfo.getCurrentLocation(),
					candidateContactInfo.getCurrentCity(), candidateContactInfo.getCurrentLandMark(), loginId };

			count = jdbcTemplate.update(query1, args);

		}

		// logger.info("count==>>"+count);

		return count;
	}

	@Override
	 
	public CandidateContactInfo getCandidateContactInfo(int loginId) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from user_profile_contact WHERE login_master_id=?";

		List<CandidateContactInfo> candidateContactInfoList = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateContactInfoMapper());

		if (!candidateContactInfoList.isEmpty()) {

			CandidateContactInfo candidateContactInfo = new CandidateContactInfo();

			candidateContactInfo = candidateContactInfoList.get(0);

			return candidateContactInfo;

		} else {

			CandidateContactInfo candidateContactInfo = new CandidateContactInfo();
			return candidateContactInfo;

		}

	}

	@Override
	 
	public int updateCandidateFamilyInfo(CandidateFamilyInfo candidateFamilyInfo, HttpServletRequest request) {

		int loginId = (Integer) request.getSession().getAttribute("login_master_id");

		int count = 0;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from user_profile_family WHERE login_master_id=?";

		List<CandidateFamilyInfo> candidateFamilyInfoList = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateFamilyInfoMapper());

		if (candidateFamilyInfoList.isEmpty()) {

			String query1 = "INSERT INTO user_profile_family (father_gardian, relation_ship, contact_number, login_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,?,'Y',GETDATE(),GETDATE())";

			Object[] args = new Object[] { candidateFamilyInfo.getGurdianName(),
					candidateFamilyInfo.getGurdianRelation(), candidateFamilyInfo.getGurdianNumber(), loginId };

			count = jdbcTemplate.update(query1, args);

		} else {

			String query1 = "UPDATE user_profile_family SET  father_gardian=?, relation_ship=?, contact_number=? ,udateTime=GETDATE() WHERE login_master_id=?";

			Object[] args = new Object[] { candidateFamilyInfo.getGurdianName(),
					candidateFamilyInfo.getGurdianRelation(), candidateFamilyInfo.getGurdianNumber(), loginId };

			count = jdbcTemplate.update(query1, args);

		}

		// logger.info("count==>>"+count);

		return count;

	}

	@Override
	 
	public CandidateFamilyInfo getCandidateFamilyInfo(int loginId) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from user_profile_family WHERE login_master_id=?";

		List<CandidateFamilyInfo> CandidateFamilyInfoList = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateFamilyInfoMapper());

		if (!CandidateFamilyInfoList.isEmpty()) {

			CandidateFamilyInfo candidateFamilyInfo = new CandidateFamilyInfo();

			candidateFamilyInfo = CandidateFamilyInfoList.get(0);

			return candidateFamilyInfo;

		} else {

			CandidateFamilyInfo candidateFamilyInfo = new CandidateFamilyInfo();
			return candidateFamilyInfo;

		}
	}

	@Override
	 
	public Map<String, String> getGraduationType() {

		Map<String, String> gradList = new HashMap<String, String>();

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * FROM education_level_master ORDER BY level_name";

		List<GraduationType> graduationTypeList = jdbcTemplate.query(query, new GraduationTypeMapper());

		// System.out.println(industryList1);

		for (GraduationType grad : graduationTypeList) {

			// System.out.println(industry.getId() + " " + industry.getIndustryType());

			gradList.put("" + grad.getId(), grad.getLevelName());

		}

		return gradList;

	}

	@Override
	 
	public Map<String, String> getSpecializationType() {
		Map<String, String> specializationList = new HashMap<String, String>();

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * FROM specialization_master ORDER BY specialization_name";

		List<SpecializationType> specializationTypeList = jdbcTemplate.query(query, new SpeciliazationTypeMapper());

		// System.out.println(industryList1);

		for (SpecializationType specialization : specializationTypeList) {

			// System.out.println(industry.getId() + " " + industry.getIndustryType());

			specializationList.put("" + specialization.getId(), specialization.getSpecializationType());

		}

		return specializationList;
	}

	@Override
	 
	public int updateCandidateEducationInfo(List<CandidateEducationInfo> candidateEducationInfoList,
			HttpServletRequest request) {

		int loginId = (Integer) request.getSession().getAttribute("login_master_id");

		int count = 0;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from user_profile_education WHERE login_master_id=?";

		List<CandidateEducationInfo> candidateEducationList = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateEducationInfoMapper());

		if (!candidateEducationList.isEmpty()) {

			String query2 = "DELETE FROM user_profile_education WHERE login_master_id=?";

			count = jdbcTemplate.update(query2, new Object[] { loginId });

		}

		String query1 = "INSERT INTO user_profile_education (qualification, year_qualification, institue_name, university, grade, remarks, specialization_master_id, education_level_master_id, login_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,?,?,?,?,?,?,'Y',GETDATE(),GETDATE())";

		for (CandidateEducationInfo CandidateEducation : candidateEducationInfoList) {

			Object[] args = new Object[] { CandidateEducation.getQualification(),
					CandidateEducation.getYearOfQualification(), CandidateEducation.getInstitution(),
					CandidateEducation.getUniversity(), CandidateEducation.getPercentage(),
					CandidateEducation.getRemarks(), CandidateEducation.getGraduationArea(),
					CandidateEducation.getGraduationType(), loginId };

			count = jdbcTemplate.update(query1, args);

		}

		// logger.info("count==>>"+count);

		return count;

	}

	@Override
	 
	public List<CandidateEducationInfo> getCandidateEducationInfo(int loginId) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "select * from user_profile_education where login_master_id=?";
		List<CandidateEducationInfo> candidateEducationInfoList = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateEducationInfoMapper());

		return candidateEducationInfoList;

	}

	@Override
	 
	public Map<String, String> getDisabilityType() {

		Map<String, String> disabilityTypeMap = new HashMap<String, String>();

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * FROM disibility_master ORDER BY disablity_name";

		List<DisabilityType> disabilityTypeList = jdbcTemplate.query(query, new DisabilityTypeMapper());

		// System.out.println(industryList1);

		for (DisabilityType disability : disabilityTypeList) {

			// System.out.println(industry.getId() + " " + industry.getIndustryType());

			disabilityTypeMap.put("" + disability.getId(), disability.getDisabilityType());

		}

		logger.info("disabilityTypeMap===>>" + disabilityTypeMap);

		return disabilityTypeMap;

	}

	@Override
	 
	public List<CandidateDisabilityInfo> getCandidateDisabilityInfo(int loginId) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "select * from user_profile_disability where login_master_id=?";
		List<CandidateDisabilityInfo> candidateDisabilityInfo = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateDisabilityInfoMapper());

		return candidateDisabilityInfo;

	}

	@Override
	 
	public String fileUpload(MultipartFile file, String name, String path) {

		String dbPath = "";

		try {

			Date date = new Date();

			SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");

			byte[] bytes = file.getBytes();

			String fileName = file.getOriginalFilename();
			String contentType = file.getContentType();
			String extnName = fileName.substring(fileName.lastIndexOf(".") + 1);

			fileName = fileName.substring(0, fileName.lastIndexOf("."));

			name = name + "_" + format.format(date);

			dbPath = path + name + "." + extnName;

			// String rootPath = "E:/Tomcat8/webapps";

			String rootPath = "/home/user/Downloads/spring";

			File dir = new File(rootPath + path);

			if (!dir.exists())

				dir.mkdirs();

			File serverFile = new File(dir.getAbsolutePath() + File.separator + name + "." + extnName);

			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));

			stream.write(bytes);

			stream.close();

		} catch (Exception e) {

		}

		return dbPath;

	}

	@Override
	 
	public int updateCandidateDisabilityDetails(List<CandidateDisabilityInfo> candidateDisabilityInfoList,
			HttpServletRequest request) {

		int loginId = (Integer) request.getSession().getAttribute("login_master_id");

		int count = 0;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from user_profile_disability WHERE login_master_id=?";

		List<CandidateDisabilityInfo> CandidateDisabilityInfoList1 = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateDisabilityInfoMapper());

		if (!CandidateDisabilityInfoList1.isEmpty()) {

			String query2 = "DELETE FROM user_profile_disability WHERE login_master_id=?";

			count = jdbcTemplate.update(query2, new Object[] { loginId });

		}

		String query1 = "INSERT INTO user_profile_disability (disaility_category, disaility_percent, disaility_certificate, disibility_master_id, login_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,?,?,'Y',GETDATE(),GETDATE())";

		for (CandidateDisabilityInfo candidateDisability : candidateDisabilityInfoList) {

			Object[] args = new Object[] { candidateDisability.getDisabilityCategory(),
					candidateDisability.getDisabilityPercentage(), candidateDisability.getCertificatePath(),
					candidateDisability.getDisabilityType(), loginId };

			count = jdbcTemplate.update(query1, args);

		}

		return count;
	}

	@Override
	 
	public List<CandidateCareerInfo> getCandidateCareerInfo(int loginId) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "select * from user_profile_career where login_master_id=?";

		List<CandidateCareerInfo> candidateCareerInfo = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateCareerInfoMapper());

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

		for (int i = 0; i < candidateCareerInfo.size(); i++) {

			try {
				Date startDate = format.parse(candidateCareerInfo.get(i).getStartDate());
				Date endDate = format.parse(candidateCareerInfo.get(i).getEndDate());
				candidateCareerInfo.get(i).setStartDate(format.format(startDate));
				candidateCareerInfo.get(i).setEndDate(format.format(endDate));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return candidateCareerInfo;

	}

	@Override
	 
	public Map<String, String> getIndustrtType() {
		// TODO Auto-generated method stub

		Map<String, String> industryList = new HashMap<String, String>();

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "select * from industry_type_master ORDER BY industry_type";

		List<Industry> industryList1 = jdbcTemplate.query(query, new IndustryMapper());

		// System.out.println(industryList1);

		for (Industry industry : industryList1) {

			// System.out.println(industry.getId() + " " + industry.getIndustryType());

			industryList.put("" + industry.getId(), industry.getIndustryType());

		}

		return industryList;
	}

	@Override
	 
	public int updateCandidateCareerInfo(List<CandidateCareerInfo> candidateCareerInfoList,
			HttpServletRequest request) {

		int loginId = (Integer) request.getSession().getAttribute("login_master_id");

		int count = 0;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from user_profile_career WHERE login_master_id=?";

		List<CandidateCareerInfo> CandidateCareerInfoList1 = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateCareerInfoMapper());

		if (!CandidateCareerInfoList1.isEmpty()) {

			String query2 = "DELETE FROM user_profile_career WHERE login_master_id=?";

			count = jdbcTemplate.update(query2, new Object[] { loginId });

		}

		String query1 = "INSERT INTO user_profile_career (designation_name, start_date, end_date, company_name, location, course_type, industry_name, is_currently_working, remarks, login_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,?,?,?,?,?,?,?,'Y',GETDATE(),GETDATE())";

		for (CandidateCareerInfo candidateCareer : candidateCareerInfoList) {

			Object[] args = new Object[] { candidateCareer.getDesignationName(), candidateCareer.getStartDate(),
					candidateCareer.getEndDate(), candidateCareer.getCompany(), candidateCareer.getLocation(),
					candidateCareer.getCourseType(), candidateCareer.getIndustryType(),
					candidateCareer.getCurrentlyWorking(), candidateCareer.getCareerRemarks(), loginId };

			count = jdbcTemplate.update(query1, args);

		}

		return count;
	}

	@Override
	 
	public List<CandidateSkillsInfo> getCandidateSkillInfo(int loginId) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "select * from user_profile_skill_train where login_master_id=?";

		List<CandidateSkillsInfo> candidateSkillsInfo = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateSkillInfoMapper());

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

		return candidateSkillsInfo;
	}

	@Override
	 
	public int updateCandidateSkillInfo(List<CandidateSkillsInfo> candidateSkillInfoList, HttpServletRequest request) {
		int loginId = (Integer) request.getSession().getAttribute("login_master_id");

		int count = 0;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from user_profile_skill_train WHERE login_master_id=?";

		List<CandidateSkillsInfo> CandidateSkillsInfoList1 = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateSkillInfoMapper());

		if (!CandidateSkillsInfoList1.isEmpty()) {

			String query2 = "DELETE FROM user_profile_skill_train WHERE login_master_id=?";

			count = jdbcTemplate.update(query2, new Object[] { loginId });

		}

		String query1 = "INSERT INTO user_profile_skill_train (skill_name, experience, training_type, login_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,?,'Y',GETDATE(),GETDATE())";

		for (CandidateSkillsInfo candidateSkill : candidateSkillInfoList) {

			Object[] args = new Object[] { candidateSkill.getSkillName(), candidateSkill.getSkillExperiencre(),
					candidateSkill.getTrainingType(), loginId };

			count = jdbcTemplate.update(query1, args);

		}

		return count;
	}

	@Override
	
	public int updateCandidateHobbieInfo(CandidateHobbiesInfo candidateHobbiesInfo, HttpServletRequest request) {
		int loginId = (Integer) request.getSession().getAttribute("login_master_id");

		int count = 0;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from user_profile_habits WHERE login_master_id=?";

		List<CandidateHobbiesInfo> candidateHobbiesInfoList = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateHobbiesInfoMapper());

		if (candidateHobbiesInfoList.isEmpty()) {

			String query1 = "INSERT INTO user_profile_habits (hobi_name, drinking, smoking, login_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,?,'Y',GETDATE(),GETDATE())";

			Object[] args = new Object[] { candidateHobbiesInfo.getHobbies(), candidateHobbiesInfo.getDrinking(),
					candidateHobbiesInfo.getSmoking(), loginId };

			count = jdbcTemplate.update(query1, args);

		} else {

			String query1 = "UPDATE user_profile_habits SET  hobi_name=?, drinking=?, smoking=?,udateTime=GETDATE() WHERE login_master_id=?";

			Object[] args = new Object[] { candidateHobbiesInfo.getHobbies(), candidateHobbiesInfo.getDrinking(),
					candidateHobbiesInfo.getSmoking(), loginId };

			count = jdbcTemplate.update(query1, args);

		}

		// logger.info("count==>>"+count);

		return count;
	}

	@Override
	
	public CandidateHobbiesInfo getCandidateHobbiesInfo(int loginId) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from user_profile_habits WHERE login_master_id=?";

		List<CandidateHobbiesInfo> candidateHobbiesInfoList = jdbcTemplate.query(query, new Object[] { loginId },
				new CandidateHobbiesInfoMapper());

		if (!candidateHobbiesInfoList.isEmpty()) {

			CandidateHobbiesInfo candidateHobbiesInfo = new CandidateHobbiesInfo();

			candidateHobbiesInfo = candidateHobbiesInfoList.get(0);

			return candidateHobbiesInfo;

		} else {

			CandidateHobbiesInfo candidateHobbiesInfo = new CandidateHobbiesInfo();
			return candidateHobbiesInfo;
		}
	}
	
	
	
	
}
