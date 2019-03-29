package com.mvc.controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;
import com.mvc.bean.RegisterBean;
import com.mvc.dao.RegisterDao;

public class signupservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public signupservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid= request.getParameter("uid");
		String password= request.getParameter("pwd");
		
		String firstname= request.getParameter("fname");
		String lastname= request.getParameter("lname");
		String age= request.getParameter("age");
		String gender= request.getParameter("gender");
		String contact= request.getParameter("cn");
		String fathername= request.getParameter("faname");
		String mothername= request.getParameter("mname");
		
		String income1= request.getParameter("id");
		int income= Integer.parseInt(income1);
		
		String tenth1= request.getParameter("tenth");
		int tenth= Integer.parseInt(tenth1);
		
		String tschool= request.getParameter("tschool");
		String tcity= request.getParameter("tcity");
		String tstate = request.getParameter("tstate");
		
		String twelth1= request.getParameter("twelth");
		int twelth = Integer.parseInt(twelth1);
		
		String twschool= request.getParameter("twschool");
		String twcity= request.getParameter("twcity");
		String twstate = request.getParameter("twstate");
		String graduation= request.getParameter("graduation");
		String gschool= request.getParameter("gschool");
		String gcity= request.getParameter("gcity");
		String gstate = request.getParameter("gstate");
		String street= request.getParameter("street");
		String locality=request.getParameter("locality");
		String city= request.getParameter("city");
		String addstate= request.getParameter("addstate");
		String zipcode= request.getParameter("zc");
		String caste = request.getParameter("caste");
		String accountno= request.getParameter("accno");
		String bankname= request.getParameter("bname");
		String ifsc= request.getParameter("ifsc");
		String bankcity= request.getParameter("bcity");
		
		RegisterBean signupBean= new RegisterBean();
		
		signupBean.setUserid(userid);
		signupBean.setPassword(password);
		
		signupBean.setFirstname(firstname);
		signupBean.setLastname(lastname);
		signupBean.setAge(age);
		signupBean.setGender(gender);
		signupBean.setContact(contact);
		signupBean.setFathername(fathername);
		signupBean.setMothername(mothername);
		signupBean.setIncome(income);
		signupBean.setTenth(tenth);
		signupBean.setTschool(tschool);
		signupBean.setTcity(tcity);
		signupBean.setTstate(tstate);
		signupBean.setTwelth(twelth);
		signupBean.setTwschool(twschool);
		signupBean.setTwcity(twcity);
		signupBean.setTwstate(twstate);
		signupBean.setGraduation(graduation);
		signupBean.setGschool(gschool);
		signupBean.setGcity(gcity);
		signupBean.setGstate(gstate);
		signupBean.setStreet(street);
		signupBean.setLocality(locality);
		signupBean.setCity(city);
		signupBean.setAddstate(addstate);
		signupBean.setZipcode(zipcode);
		signupBean.setCaste(caste);
		signupBean.setAccountno(accountno);
		signupBean.setBankname(bankname);
		signupBean.setIfsc(ifsc);
		signupBean.setBankcity(bankcity);
		
		RegisterDao registerDao = new RegisterDao();
		
		String userRegistered = registerDao.registerUser(signupBean);
		
	
		if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		{
			request.getRequestDispatcher("/studentlogin.jsp").forward(request, response);
		}
		else   
		{
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/signup.jsp").include(request, response);
		}
	}
	}

