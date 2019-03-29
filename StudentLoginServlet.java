package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.bean.StudentLoginBean;
import com.mvc.dao.StudentLoginDao;
public class StudentLoginServlet extends HttpServlet 
{
	public StudentLoginServlet()
	{
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		System.out.println(userName);
		System.out.println(password);
		
		
		
		
		
		StudentLoginBean studentloginBean = new StudentLoginBean(); 
		studentloginBean.setUserName(userName); 
		studentloginBean.setPassword(password);
		
		
		StudentLoginDao studentloginDao = new StudentLoginDao();
		String userValidate = studentloginDao.authenticateUser(studentloginBean);
		
		if(userValidate.equals("SUCCESS")) 
		{
			request.setAttribute("uid", userName); 
			request.getRequestDispatcher("/studenthome.html").forward(request, response);
			HttpSession session=request.getSession(true);
			session.setAttribute("uname",userName);
			
		}
		else
		{
			request.setAttribute("errMessage", userValidate); 
			request.getRequestDispatcher("/studentlogin.jsp").forward(request, response);
		}
	}
}