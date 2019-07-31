package com.spring.dao;

import javax.servlet.http.HttpServletRequest;

import com.spring.model.Login;

public interface LoginDAO 
{
 	public int loginAuth(Login l,HttpServletRequest request);
}
