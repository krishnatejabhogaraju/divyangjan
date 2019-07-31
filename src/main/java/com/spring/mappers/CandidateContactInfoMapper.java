package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.CandidateContactInfo;

public class CandidateContactInfoMapper implements RowMapper<CandidateContactInfo> {

	@Override
	public CandidateContactInfo mapRow(ResultSet rs, int rowNum) throws SQLException {

		CandidateContactInfo candidateContactInfo = new CandidateContactInfo();

		candidateContactInfo.setId(rs.getInt("user_profile_contact_id"));
		candidateContactInfo.setPrimaryPhoneNumber(rs.getString("phone_number"));
		candidateContactInfo.setTelephoneNumber(rs.getString("tel_no"));
		candidateContactInfo.setPermanentDoorNo(rs.getString("per_door_no"));
		candidateContactInfo.setPermanentStreet(rs.getString("per_street_line"));
		candidateContactInfo.setPermanentLocation(rs.getString("per_location"));
		candidateContactInfo.setPermanentCity(rs.getString("per_city"));
		candidateContactInfo.setPermanentLandMark(rs.getString("per_land_mark"));
		candidateContactInfo.setCurrentDoorNo(rs.getString("res_door_no"));
		candidateContactInfo.setCurrentStreet(rs.getString("res_street_line"));
		candidateContactInfo.setCurrentLocation(rs.getString("res_location"));
		candidateContactInfo.setCurrentCity(rs.getString("res_city"));
		candidateContactInfo.setCurrentLandMark(rs.getString("res_land_mark"));

		return candidateContactInfo;

	}

}
