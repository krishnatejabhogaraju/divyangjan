package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.CandidateSkillsInfo;

public class CandidateSkillInfoMapper implements RowMapper<CandidateSkillsInfo> {

	@Override
	public CandidateSkillsInfo mapRow(ResultSet rs, int rowNum) throws SQLException {

		CandidateSkillsInfo candidateSkillsInfo = new CandidateSkillsInfo();
		
		candidateSkillsInfo.setId(rs.getInt("user_profile_skill_train_id"));
		candidateSkillsInfo.setSkillExperiencre(rs.getString("experience"));
		candidateSkillsInfo.setSkillName(rs.getString("skill_name"));
		candidateSkillsInfo.setTrainingType(rs.getString("training_type"));

		return candidateSkillsInfo;

	}

}
