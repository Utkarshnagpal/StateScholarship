package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.bean.LoginBean;
import com.mvc.dao.LoginDao;
public class LoginServlet extends HttpServlet 
{
	public LoginServlet()
	{
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		System.out.println(userName);
		System.out.println(password);
		
		
		
		
		
		LoginBean loginBean = new LoginBean(); 
		loginBean.setUserName(userName); 
		loginBean.setPassword(password);
		
		
		LoginDao loginDao = new LoginDao();
		String userValidate = loginDao.authenticateUser(loginBean);
		
		if(userValidate.equals("SUCCESS")) 
		{
			request.setAttribute("userName", userName); 
			request.getRequestDispatcher("/Adminhome.jsp").forward(request, response);
			
			HttpSession session=request.getSession(true);
			session.setAttribute("uname",userName);
		}
		else
		{
			request.setAttribute("errMessage", userValidate); 
			request.getRequestDispatcher("/adminlogin.jsp").forward(request, response);
		}
	}
}