package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.CandidatePersonalInfo;

public class CandidatePersonalInfoMapper implements RowMapper<CandidatePersonalInfo> {

	@Override
	public CandidatePersonalInfo mapRow(ResultSet rs, int rowNum) throws SQLException {

		CandidatePersonalInfo candidatePersonalInfo = new CandidatePersonalInfo();

		candidatePersonalInfo.setId(rs.getInt("user_profile_personal_id"));
		candidatePersonalInfo.setTitle(rs.getString("title"));
		candidatePersonalInfo.setFirstName(rs.getString("first_name"));
		candidatePersonalInfo.setMiddleName(rs.getString("middle_name"));
		candidatePersonalInfo.setLastName(rs.getString("last_name"));
		candidatePersonalInfo.setDateOfBirth(rs.getString("dob"));
		candidatePersonalInfo.setAge(rs.getInt("age"));
		candidatePersonalInfo.setGender(rs.getString("gender"));
		candidatePersonalInfo.setPhoneNumber(rs.getString("phone_number"));
		candidatePersonalInfo.setEmail(rs.getString("email"));
		candidatePersonalInfo.setBloodGroup(rs.getString("blood_group"));
		candidatePersonalInfo.setMartialStatus(rs.getString("marital_status"));

		return candidatePersonalInfo;
	}

}
