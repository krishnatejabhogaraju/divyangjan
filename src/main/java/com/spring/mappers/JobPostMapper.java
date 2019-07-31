package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.JobPost;

public class JobPostMapper implements RowMapper<JobPost> {

	@Override
	public JobPost mapRow(ResultSet rs, int rowNum) throws SQLException {

		JobPost jobPost = new JobPost();

		Date date = null;
		
		String lastDateToApply=""; 

		try {
			date = new SimpleDateFormat("yyyy-MM-dd").parse(rs.getString("lastdate_to_apply"));
			
			lastDateToApply  = new SimpleDateFormat("yyyy-MM-dd").format(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		jobPost.setJobId(rs.getInt("job_post_id"));
		jobPost.setJobTitle(rs.getString("job_title"));
		jobPost.setIndustryType(rs.getString("industry_type"));
		jobPost.setOrganizationName(rs.getString("organisation_name"));
		jobPost.setJobDescription(rs.getString("job_description"));
		jobPost.setExperienceRequired(rs.getString("experience_required"));
		jobPost.setSkillSets(rs.getString("skill_sets"));
		jobPost.setLocation(rs.getString("location"));
		jobPost.setLastDateToApply(lastDateToApply);
		jobPost.setSalary(rs.getString("salary"));
		jobPost.setDisabilityType(rs.getString("disaility_type"));
		jobPost.setAdditionalNotes(rs.getString("additional_notes"));
		jobPost.setAgeMin(rs.getInt("min_age"));
		jobPost.setAgeMax(rs.getInt("max_age"));

		return jobPost;
	}

}
