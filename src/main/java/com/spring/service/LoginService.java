package com.spring.service;

import javax.servlet.http.HttpServletRequest;

import com.spring.model.Login;

public interface LoginService 
{

	public int loginAuth(Login l,HttpServletRequest request);
}
