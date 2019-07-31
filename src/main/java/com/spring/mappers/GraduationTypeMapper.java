package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.GraduationType;

public class GraduationTypeMapper implements RowMapper<GraduationType> {

	@Override
	public GraduationType mapRow(ResultSet rs, int rowNum) throws SQLException {

		GraduationType graduationType = new GraduationType();
		
		graduationType.setId(rs.getInt("education_level_master_id"));
		graduationType.setLevelName(rs.getString("level_name"));

		return graduationType;

	}

}
