package com.spring.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.model.OrganizationRegistration;

public class OrganizatonMapper implements RowMapper<OrganizationRegistration> {

	@Override
	public OrganizationRegistration mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub

		OrganizationRegistration organizationRegistration = new OrganizationRegistration();

		organizationRegistration.setId(rs.getInt("organization_profile_id"));
		organizationRegistration.setCompanyName(rs.getString("company_name"));
		organizationRegistration.setLocation(rs.getString("location"));
		organizationRegistration.setPhoneNumber(rs.getString("phone_number"));
		organizationRegistration.setPersonName(rs.getString("contact_person_name"));
		organizationRegistration.setEmail(rs.getString("e_mail"));
		organizationRegistration.setLandLinenumber(rs.getString("land_line"));
		organizationRegistration.setIndustryType(rs.getInt("industry_type"));
		organizationRegistration.setCompanyWebsiteLink(rs.getString("company_website"));

		return organizationRegistration;
	}

}
