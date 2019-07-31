package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.Industry;

public class IndustryMapper implements RowMapper<Industry> {

	@Override
	public Industry mapRow(ResultSet rs, int rowNum) throws SQLException {

		Industry industry = new Industry();

		industry.setId(rs.getInt("industry_type_master_id"));
		industry.setIndustryType(rs.getString("industry_type"));

		return industry;
	}

}
