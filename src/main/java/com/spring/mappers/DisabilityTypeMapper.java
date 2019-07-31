package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.DisabilityType;

public class DisabilityTypeMapper implements RowMapper<DisabilityType> {

	@Override
	public DisabilityType mapRow(ResultSet rs, int rowNum) throws SQLException {

		DisabilityType disabilityType = new DisabilityType();

		disabilityType.setId(rs.getInt("disibility_master_id"));
		disabilityType.setDisabilityType(rs.getString("disablity_name"));

		return disabilityType;

	}

}
