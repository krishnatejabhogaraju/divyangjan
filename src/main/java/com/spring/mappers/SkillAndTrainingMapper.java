package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.SkillAndTraining;

public class SkillAndTrainingMapper implements RowMapper<SkillAndTraining> {

	@Override
	public SkillAndTraining mapRow(ResultSet rs, int rowNum) throws SQLException {

		SkillAndTraining skillAndTraining = new SkillAndTraining();

		Date date = null;
		
		String startDate="";
		String endDate="";

		try {
			date = new SimpleDateFormat("yyyy-MM-dd").parse(rs.getString("start_date"));
			startDate  = new SimpleDateFormat("yyyy-MM-dd").format(date);
			
			date = new SimpleDateFormat("yyyy-MM-dd").parse(rs.getString("end_date"));
			endDate  = new SimpleDateFormat("yyyy-MM-dd").format(date);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

		skillAndTraining.setId(rs.getInt("training_details_id"));
		skillAndTraining.setInstituteName(rs.getString("institue_name"));
		skillAndTraining.setCouresesOffered(rs.getString("courses_offered"));
		skillAndTraining.setLocation(rs.getString("location"));
		skillAndTraining.setDuration(rs.getString("duration"));
		skillAndTraining.setStartDate(startDate);
		skillAndTraining.setEndDate(endDate);
		
		return skillAndTraining;
	}

}
