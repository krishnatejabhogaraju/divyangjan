package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.SpecializationType;

public class SpeciliazationTypeMapper implements RowMapper<SpecializationType> {

	@Override
	public SpecializationType mapRow(ResultSet rs, int rowNum) throws SQLException {

		SpecializationType specializationType = new SpecializationType();
		
		specializationType.setId(rs.getInt("specialization_master_id"));
		specializationType.setSpecializationType(rs.getString("specialization_name"));
		
		return specializationType;
	}
	
	

}
