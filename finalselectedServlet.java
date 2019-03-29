package com.mvc.controller;
import javax.servlet.http.HttpSession;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;
import com.mvc.bean.finalselectedbean;
import com.mvc.dao.finalselecteddao;


public class finalselectedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public finalselectedServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session =request.getSession(false);
		int csize=(Integer)session.getAttribute("csize");
		System.out.println("size = "+csize);
		//int size=Integer.parseInt(csize);
		int i;
		String select;
		String studid[]=new String[csize];
	
		String s[]=new String[csize];
		
	    select=request.getParameter("selected");
	    	 //s=request.getParameterValues("selected");
	    			//if(!s.equals(""))
	    			
	   System.out.println("s"+s);
		
		finalselectedbean finalselectedBean= new finalselectedbean();
		
	
		finalselectedBean.setStudid(studid);
		

		
		finalselecteddao finalselectedDao = new finalselecteddao();
		String userValidate = finalselectedDao.updatefinal(finalselectedBean);
		
		if(userValidate.equals("SUCCESS")) 
		{ 
			request.getRequestDispatcher("/Adminhome.jsp").forward(request, response);
			

		}
		else
		{
			request.setAttribute("errMessage", userValidate); 
			request.getRequestDispatcher("/Eligible.jsp").forward(request, response);
		}
	}
	}

