package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.CandidateFamilyInfo;

public class CandidateFamilyInfoMapper implements RowMapper<CandidateFamilyInfo> {

	@Override
	public CandidateFamilyInfo mapRow(ResultSet rs, int rowNum) throws SQLException {

		CandidateFamilyInfo candidateFamilyInfo = new CandidateFamilyInfo();

		candidateFamilyInfo.setId(rs.getInt("user_profile_family_id"));
		candidateFamilyInfo.setGurdianName(rs.getString("father_gardian"));
		candidateFamilyInfo.setGurdianNumber(rs.getString("contact_number"));
		candidateFamilyInfo.setGurdianRelation(rs.getString("relation_ship"));

		return candidateFamilyInfo;

	}

}
