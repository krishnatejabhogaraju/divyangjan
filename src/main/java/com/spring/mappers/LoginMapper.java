
package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.CandidateRegistration;
import com.spring.model.Login;

public class LoginMapper implements RowMapper<Login> {

	@Override
	public Login mapRow(ResultSet rs, int rowNum) throws SQLException {

		Login login = new Login();

		login.setId(rs.getInt("login_master_id"));
		
		login.setEmail(rs.getString("e_mail"));
		login.setPhoneNumber(rs.getString("phone_number"));
		login.setPassword(rs.getString("password"));

		return login;
	}

}
