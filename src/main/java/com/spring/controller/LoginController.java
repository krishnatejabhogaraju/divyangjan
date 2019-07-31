package com.spring.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.model.Login;

import com.spring.service.LoginService;


@Controller
public class LoginController 
{

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	//private Map<Integer, Employee> emps = null;
	
	private LoginService loginService;
	
	@Autowired(required=true)
	@Qualifier(value="loginService")
	public void setLoginService(LoginService ls)
	{
		this.loginService = ls;
	}
	
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginUserPage(Model model) 
	{	
		System.out.println("login Page-->");
		model.addAttribute("login", new Login());
		logger.info("Returning empSave.jsp page");
		return "login";
	}
	
	//@RequestMapping(value = { "/loginAuth","/loginAuth/{jobId}" })
	@RequestMapping(value = { "/loginAuth" })
	public String loginUserAction(@ModelAttribute("login") Login login,Model model,HttpServletRequest request,HttpSession session) 
	{
		
		/*if(bindingResult.hasErrors()) 
		{
			System.out.println("bindingResult-->");
			
			logger.info("Returning empSave.jsp page");
			return "login";
		}*/
		
		//System.out.println("jobId--222222-->"+jobId);
		//request.setAttribute("jobId",login.getJobId());
		
		String requestType=request.getMethod();
		
		
		String returnPage="";
		
		if(requestType.equals("POST"))
		{
		
			
		int	roleId=this.loginService.loginAuth(login,request);
		
		if(roleId==1)
		{	
			//return "pwdLoggedinPage";
			
			returnPage="pwdLoggedinPage";
			
		}else if(roleId==2)
		{	
			//return "agencyLoggedinPage";
			
			returnPage="agencyLoggedinPage";
			
		}else if(roleId==3)
		{	
			//return "authoritiesLoggedinPage";
			returnPage="authoritiesLoggedinPage";
			
		}else if(roleId==4)
		{	
			//return "donarLoggedinPage";
			returnPage="donarLoggedinPage";
		}
		else if(roleId==5)
		{	
			//return "donarLoggedinPage";
			returnPage="adminLoggedinPage";
		}
		else {
			
			request.setAttribute("error", "Invalid UserName/Password");
			
			//return "index";
			returnPage="index";
		}
		
		}if(requestType.equals("GET"))
		{
				
			if(request.getSession().getAttribute("login_master_id") != null)
			{
			
				
				String	roleMasterId=request.getSession().getAttribute("role_master_id").toString();
							
				System.out.println("roleMasterId.roleMasterId();-->"+roleMasterId);
				
				int roleId=Integer.parseInt(roleMasterId);
				
				if(roleId==1)
				{	
					//return "pwdLoggedinPage";
					
					returnPage="pwdLoggedinPage";
					
				}else if(roleId==2)
				{	
					//return "agencyLoggedinPage";
					
					returnPage="agencyLoggedinPage";
					
				}	else if(roleId==3)
				{	
					//return "authoritiesLoggedinPage";
					returnPage="authoritiesLoggedinPage";
					
				}else if(roleId==4)
				{	
					//return "donarLoggedinPage";
					returnPage="donarLoggedinPage";
				}else if(roleId==5)
				{	
					//return "donarLoggedinPage";
					returnPage="adminLoggedinPage";
				}	
							
				
			}else {
								
				//return "redirect:/logout";
				// System.out.println("request.getMethod5();-->");
				returnPage="redirect:/logout";
			}
			
		}
		
		return returnPage;
		
	}
	
	@RequestMapping(value = "/loginAuthPublic")
	@ResponseBody
	public String loginUserPublicAction(@ModelAttribute("login") Login login,Model model,HttpServletRequest request,HttpSession session) 
	{
			
		System.out.println("request.getMethod();-->"+request.getMethod());
		System.out.println("login.getJobId()--11111;-->"+login.getJobId());
		
		System.out.println("login-->"+login.getUserName());
		
		
		
		String returnPage="";
				
		int	roleId=this.loginService.loginAuth(login,request);
		
		if(roleId==1)
		{	
			//return "pwdLoggedinPage";
			
		//	returnPage="pwdLoggedinPage";
			returnPage=login.getJobId();
			
		}/*else if(roleId==2)
		{	
			
			
			returnPage="agencyLoggedinPage";
			
		}else if(roleId==3)
		{	
			
			returnPage="authoritiesLoggedinPage";
			
		}else if(roleId==4)
		{	
			
			returnPage="donarLoggedinPage";
		}
		else if(roleId==5)
		{	
			
			returnPage="adminLoggedinPage";
		}*/
		else {
			
			// request.setAttribute("error", "Invalid UserName/Password");
			
			//return "index";
			returnPage="index";
		}
				
		return returnPage;
		
	}
	
	
	@RequestMapping(value = "/loginAuthPublicRedirect")
	public String loginAuthPublicRedirectAction(Model model,HttpServletRequest request,HttpSession session,@RequestParam("id") String jobId) 
	{
				
		// System.out.println("jobId--222222-->"+jobId);
		//request.setAttribute("jobId",login.getJobId());
		
		String requestType=request.getMethod();
		
		
		String returnPage="";
		
		if(requestType.equals("GET"))
		{
				
			if(request.getSession().getAttribute("login_master_id") != null)
			{
			
				
				String	roleMasterId=request.getSession().getAttribute("role_master_id").toString();
							
				System.out.println("roleMasterId.roleMasterId();-->"+roleMasterId);
				
				request.setAttribute("jobId",jobId);
				
				int roleId=Integer.parseInt(roleMasterId);
				
				if(roleId==1)
				{	
					
					
					returnPage="pwdLoggedinPage";
					
				}/*else if(roleId==2)
				{	
					
					
					returnPage="agencyLoggedinPage";
					
				}	else if(roleId==3)
				{	
					
					returnPage="authoritiesLoggedinPage";
					
				}else if(roleId==4)
				{	
					
					returnPage="donarLoggedinPage";
				}else if(roleId==5)
				{	
					
					returnPage="adminLoggedinPage";
				}	
							
				
			}*/else {
								
						
				returnPage="redirect:/logout";
			}
			
		}
		}
		return returnPage;
		
	}
	
	
	@RequestMapping(value = "/logout")
	public String logout(Model model, HttpSession session) 
	{
		
		session.removeAttribute("login_master_id");
		session.removeAttribute("role_master_id");
		session.invalidate();
		
		return "redirect:/indexPage";
	}
	
	@RequestMapping(value = "/logoutLoad")
	@ResponseBody
	public String logoutAjax(Model model, HttpSession session) 
	{
		String response="signout";
		/*session.removeAttribute("login_master_id");
		session.removeAttribute("role_master_id");
		session.invalidate();*/
		
		return response;
	}
	
	@RequestMapping(value = "/loginSessionCheck", method = RequestMethod.GET)
	public String loginSessionPage(HttpSession session,Model model,HttpServletRequest request) 
	{	
		if(request.getSession().getAttribute("userName") != null) 
		{
			return "loginSuccess";
		}
		//logger.info("Returning empSave.jsp page");
		return "redirect:login";
	}
	
	
	@RequestMapping(value = "/hello")
	public ResponseEntity<String> hello() 
	{
	    return new ResponseEntity<String>("Hello World!", HttpStatus.OK);
	}
	
}
