package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.CandidateEducationInfo;

public class CandidateEducationInfoMapper implements RowMapper<CandidateEducationInfo> {

	@Override
	public CandidateEducationInfo mapRow(ResultSet rs, int rowNum) throws SQLException {

		CandidateEducationInfo candidateEducationInfo = new CandidateEducationInfo();

		candidateEducationInfo.setQualification(rs.getString("qualification"));
		candidateEducationInfo.setYearOfQualification(rs.getString("year_qualification"));
		candidateEducationInfo.setInstitution(rs.getString("institue_name"));
		candidateEducationInfo.setUniversity(rs.getString("university"));
		candidateEducationInfo.setGraduationType(rs.getString("education_level_master_id"));
		candidateEducationInfo.setGraduationArea(rs.getString("specialization_master_id"));
		candidateEducationInfo.setPercentage(rs.getString("grade"));
		candidateEducationInfo.setRemarks(rs.getString("remarks"));

		return candidateEducationInfo;

	}

}
