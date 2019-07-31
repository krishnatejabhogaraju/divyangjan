package com.spring.dao;

import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;

import com.spring.mappers.JobPostMapper;
import com.spring.mappers.SuccessStoryMapper;
import com.spring.model.JobPost;
import com.spring.model.SuccessStory;

public class HomeDaoImpl implements HomeDao {

	private static final Logger logger = LoggerFactory.getLogger(LoginDAOImpl.class);

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public List<SuccessStory> successStories() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String query = "select * from success_stories";
		List<SuccessStory> successStories = jdbcTemplate.query(query, new SuccessStoryMapper());

		return successStories;
	}

}
