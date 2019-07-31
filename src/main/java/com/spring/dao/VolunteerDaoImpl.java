package com.spring.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.spring.mappers.CandidateLoginMapper;
import com.spring.mappers.LoginMapper;
import com.spring.mappers.OrganizatonMapper;
import com.spring.model.CandidateRegistration;
import com.spring.model.Login;
import com.spring.model.OrganizationRegistration;
import com.spring.model.VolunteerRegistration;

@Repository
public class VolunteerDaoImpl implements VolunteerDao {

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public int volunteerRegistration(VolunteerRegistration volunteerRegistration) {

		// System.out.println(organizationRegistration.getCompanyName());

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "SELECT * from login_master WHERE phone_number=?";

		List<Login> loginList1 = jdbcTemplate.query(query, new Object[] { volunteerRegistration.getPhoneNumber() },
				new LoginMapper());

		String query1 = "SELECT * from login_master WHERE e_mail=?";

		List<Login> loginList2 = jdbcTemplate.query(query1, new Object[] { volunteerRegistration.getEmail() },
				new LoginMapper());

		if (!loginList1.isEmpty()) {

			return 1; // phone number already exist

		} else if (!loginList2.isEmpty()) {

			return 2; // email already exist

		} else {

			final String query3 = "INSERT INTO login_master (phone_number, e_mail, password, role_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,'6','Y',GETDATE(),GETDATE())";

			Object[] args = new Object[] { volunteerRegistration.getPhoneNumber(), volunteerRegistration.getEmail(),
					volunteerRegistration.getVolunteerPassword() };

			int loginCount = jdbcTemplate.update(query3, args);

			String query5 = "SELECT * from login_master WHERE phone_number=?";

			Login loginList3 = jdbcTemplate.queryForObject(query5,
					new Object[] { volunteerRegistration.getPhoneNumber() }, new LoginMapper());

			// System.out.println(loginCount);

			String query4 = "INSERT INTO volunteers_profile (first_name, last_name, phone_number, e_mail, skills, occupation, age, blood_group, city, gender, login_master_id, is_active, edateTime, udateTime) VALUES(?,?,?,?,?,?,?,?,?,?,?,'Y',GETDATE(),GETDATE())";

			Object[] args1 = new Object[] { volunteerRegistration.getFirstName(), volunteerRegistration.getLastName(),
					volunteerRegistration.getPhoneNumber(), volunteerRegistration.getEmail(),
					volunteerRegistration.getSkills(), volunteerRegistration.getOccupation(),
					volunteerRegistration.getAge(), volunteerRegistration.getBloodGroup(),
					volunteerRegistration.getCity(), volunteerRegistration.getGender(), loginList3.getId() };

			int orgProfileCount = jdbcTemplate.update(query4, args1);

			if (orgProfileCount > 0) {

				return 4; // submission successful

			} else {

				return 5; // submission failed

			}

		}

	}

}
