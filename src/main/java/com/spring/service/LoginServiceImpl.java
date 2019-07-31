package com.spring.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.spring.dao.LoginDAO;
import com.spring.model.Login;

@Service
public class LoginServiceImpl implements LoginService
{
	
	private LoginDAO loginDAO;

	public void setLoginDAO(LoginDAO loginDAO) 
	{
		this.loginDAO = loginDAO;
	}
	
	@Override
	@Transactional
	public int loginAuth(Login l,HttpServletRequest request) 
	{
		int loginCnt=this.loginDAO.loginAuth(l,request);
		return loginCnt;
	}
}
