package com.spring.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import org.springframework.stereotype.Repository;
import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.spring.model.Login;
@Repository
public class LoginDAOImpl implements LoginDAO
{

	private static final Logger logger = LoggerFactory.getLogger(LoginDAOImpl.class);
	
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) 
	{
		this.dataSource = dataSource;
	}
	
	@Override
	public int loginAuth(Login l,HttpServletRequest request) 
	{
		int loginCnt=0;
		
		
		
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		
		String query = "select login_master_id, phone_number,e_mail, password,role_master_id from login_master where (phone_number = ? or e_mail=?) and password= ?";
		
		
		System.out.println("query-->"+query);
		
		Object[] args = new Object[] {l.getUserName(),l.getUserName(),l.getPassword()};
		
		//using RowMapper anonymous class, we can create a separate RowMapper for reuse
		
		/*Login emp = jdbcTemplate.queryForObject(query, new Object[]{l.getUserName(),l.getPassword()}, new RowMapper<Login>(){

			public Login mapRow(ResultSet rs, int rowNum)
					throws SQLException {
				Login emp = new Login();
				emp.setId(rs.getInt("login_id"));
				emp.setUserName(rs.getString("username"));
				emp.setPassword(rs.getString("password"));
				return emp;
			}});*/
		
		
		List<Login> loginList = new ArrayList<Login>();

		List<Map<String,Object>> loginRows = jdbcTemplate.queryForList(query,args);
		
		for(Map<String,Object> lognRow : loginRows)
		{
			Login login = new Login();
			
			login.setId(Integer.parseInt(String.valueOf(lognRow.get("login_master_id"))));
			// login.setUserName(String.valueOf(lognRow.get("user_id"))); 
			login.setUserName(String.valueOf(l.getUserName()));
			login.setPassword(String.valueOf(lognRow.get("password")));
			loginList.add(login);
			
			//loginCnt=(Integer) lognRow.get("login_master_id");
			loginCnt=(Integer) lognRow.get("role_master_id");
					
			request.getSession().setAttribute("login_master_id", lognRow.get("login_master_id"));
			request.getSession().setAttribute("role_master_id", lognRow.get("role_master_id"));
		}
		
		
		
		/*if(loginList.size()>0)
		{
			loginCnt=1;
		}*/
		
		return loginCnt;
	}
	
}
