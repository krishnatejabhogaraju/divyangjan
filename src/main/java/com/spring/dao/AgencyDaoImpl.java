package com.spring.dao;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.spring.mappers.IndustryMapper;
import com.spring.mappers.LoginMapper;
import com.spring.mappers.OrganizatonMapper;
import com.spring.model.Industry;
import com.spring.model.JobPost;
import com.spring.model.Login;
import com.spring.model.OrganizationRegistration;

@Repository
public class AgencyDaoImpl implements AgencyDao {

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public int jobPost(JobPost jobPost) {
		
		int createCount=0;

		try {

			JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
			
			Date date = new Date();

			String SQL = "INSERT INTO job_post(job_title,industry_type,organisation_name,job_description,experience_required,skill_sets,location,lastdate_to_apply,salary,disaility_type,additional_notes,min_age,max_age,login_master_id,profile_master_id,is_active,edateTime,udateTime)"
					+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,GETDATE(),GETDATE())";

			createCount = jdbcTemplate.update(SQL, jobPost.getJobTitle(), jobPost.getIndustryType(),
					jobPost.getOrganizationName(), jobPost.getJobDescription(), jobPost.getExperienceRequired(),
					jobPost.getSkillSets(), jobPost.getLocation(), jobPost.getLastDateToApply(), jobPost.getSalary(),
					jobPost.getDisabilityType(), jobPost.getAdditionalNotes(),
					jobPost.getAgeMin() , jobPost.getAgeMax(), 1, 1,"Y");

		} catch (Exception e) {

			System.out.println(e.getMessage());

		}

		return createCount;

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
	public int organizationRegistration(final OrganizationRegistration organizationRegistration) {

		//System.out.println(organizationRegistration.getCompanyName());

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from login_master WHERE phone_number=?";

		List<Login> loginList1 = jdbcTemplate.query(query, new Object[] { organizationRegistration.getPhoneNumber() },
				new LoginMapper());

		String query1 = "SELECT * from login_master WHERE e_mail=?";

		List<Login> loginList2 = jdbcTemplate.query(query1, new Object[] { organizationRegistration.getEmail() },
				new LoginMapper());

		String query2 = "SELECT * FROM dbo.organization_profile WHERE company_name=?";

		List<OrganizationRegistration> orgProfile = jdbcTemplate.query(query2,
				new Object[] { organizationRegistration.getCompanyName() }, new OrganizatonMapper());

		//System.out.println(loginList1.isEmpty() + " " + loginList2.isEmpty() + " " + orgProfile.isEmpty());

		if (!loginList1.isEmpty()) {

			return 1;

		} else if (!loginList2.isEmpty()) {

			return 2;

		} else if (!orgProfile.isEmpty()) {

			return 3;

		} else {

			final String query3 = "INSERT INTO login_master (phone_number, e_mail, password, role_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,'2','Y',GETDATE(),GETDATE())";

			Object[] args = new Object[] { organizationRegistration.getPhoneNumber(),
					organizationRegistration.getEmail(), organizationRegistration.getOrgPassword() };

			int loginCount = jdbcTemplate.update(query3, args);

			String query5 = "SELECT * from login_master WHERE phone_number=?";

			Login loginList3 = jdbcTemplate.queryForObject(query5,
					new Object[] { organizationRegistration.getPhoneNumber() }, new LoginMapper());

			//System.out.println(loginCount);

			String query4 = "INSERT INTO organization_profile(company_name, location, phone_number, contact_person_name, e_mail, land_line, industry_type, company_website, registered_city, login_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,?,?,?,?,?,?,?,'Y',GETDATE(),GETDATE())";

			Object[] args1 = new Object[] { organizationRegistration.getCompanyName(),
					organizationRegistration.getLocation(), organizationRegistration.getPhoneNumber(),
					organizationRegistration.getPersonName(), organizationRegistration.getEmail(),
					organizationRegistration.getLandLinenumber(), organizationRegistration.getIndustryType(),
					organizationRegistration.getCompanyWebsiteLink(), organizationRegistration.getRegisteredCity(),
					loginList3.getId() };

			int orgProfileCount = jdbcTemplate.update(query4, args1);

			if (orgProfileCount > 0) {

				return 4;

			} else {

				return 5;

			}

		}

	}
	

}
