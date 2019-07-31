package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.CandidateRegistration;
import com.spring.model.Login;

public class CandidateLoginMapper implements RowMapper<CandidateRegistration> {

	@Override
	public CandidateRegistration mapRow(ResultSet rs, int rowNum) throws SQLException {

		CandidateRegistration candidateRegistration = new CandidateRegistration();

		candidateRegistration.setId(rs.getInt("login_master_id"));
		// login.setName(rs.getString(columnIndex));
		candidateRegistration.setEmail(rs.getString("e_mail"));
		candidateRegistration.setPhoneNumber(rs.getString("phone_number"));
		candidateRegistration.setCandidatePassword(rs.getString("password"));

		return candidateRegistration;
	}

}
