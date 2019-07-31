package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.CandidateHobbiesInfo;

public class CandidateHobbiesInfoMapper implements RowMapper<CandidateHobbiesInfo> {

	@Override
	public CandidateHobbiesInfo mapRow(ResultSet rs, int rowNum) throws SQLException {

		CandidateHobbiesInfo candidateHobbiesInfo = new CandidateHobbiesInfo();

		candidateHobbiesInfo.setId(rs.getInt("user_profile_habits_id"));
		candidateHobbiesInfo.setHobbies(rs.getString("hobi_name"));
		candidateHobbiesInfo.setDrinking(rs.getString("drinking"));
		candidateHobbiesInfo.setSmoking(rs.getString("smoking"));

		return candidateHobbiesInfo;

	}

}
