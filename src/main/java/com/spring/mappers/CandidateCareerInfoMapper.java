package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.CandidateCareerInfo;

public class CandidateCareerInfoMapper implements RowMapper<CandidateCareerInfo> {

	@Override
	public CandidateCareerInfo mapRow(ResultSet rs, int rowNum) throws SQLException {

		CandidateCareerInfo candidateCareerInfo = new CandidateCareerInfo();

		candidateCareerInfo.setId(rs.getInt("user_profile_career_id"));
		candidateCareerInfo.setDesignationName(rs.getString("designation_name"));
		candidateCareerInfo.setStartDate(rs.getString("start_date"));
		candidateCareerInfo.setEndDate(rs.getString("end_date"));
		candidateCareerInfo.setCurrentlyWorking(rs.getString("is_currently_working"));
		candidateCareerInfo.setCompany(rs.getString("company_name"));
		candidateCareerInfo.setLocation(rs.getString("location"));
		candidateCareerInfo.setCourseType(rs.getString("course_type"));
		candidateCareerInfo.setIndustryType(rs.getString("industry_name"));
		candidateCareerInfo.setCareerRemarks(rs.getString("remarks"));

		return candidateCareerInfo;
	}

}
