package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.SuccessStory;

public class SuccessStoryMapper implements RowMapper<SuccessStory> {

	@Override
	public SuccessStory mapRow(ResultSet rs, int rowNum) throws SQLException {

		SuccessStory successStory = new SuccessStory();

		successStory.setId(rs.getInt("success_stories_id"));
		successStory.setName(rs.getString("name"));
		successStory.setDbPath(rs.getString("photo_path"));
		successStory.setTitle(rs.getString("title"));
		successStory.setStory(rs.getString("story_desc"));

		return successStory;
	}

}
