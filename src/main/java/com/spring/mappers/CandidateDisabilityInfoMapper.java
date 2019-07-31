package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.CandidateDisabilityInfo;

public class CandidateDisabilityInfoMapper implements RowMapper<CandidateDisabilityInfo> {

	@Override
	public CandidateDisabilityInfo mapRow(ResultSet rs, int rowNum) throws SQLException {

		CandidateDisabilityInfo candidateDisabilityInfo = new CandidateDisabilityInfo();

		candidateDisabilityInfo.setId(rs.getInt("user_profile_disability_id"));
		candidateDisabilityInfo.setDisabilityCategory(rs.getString("disaility_category"));
		candidateDisabilityInfo.setDisabilityType(rs.getString("disibility_master_id"));
		candidateDisabilityInfo.setDisabilityPercentage(rs.getString("disaility_percent"));
		candidateDisabilityInfo.setCertificatePath(rs.getString("disaility_certificate"));

		return candidateDisabilityInfo;

	}

}
