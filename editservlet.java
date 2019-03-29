package com.mvc.controller;
import javax.servlet.http.HttpSession;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;
import com.mvc.bean.editbean;
import com.mvc.dao.editdao;

public class editservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public editservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String contact= request.getParameter("cn");
		String street= request.getParameter("street");
		String locality=request.getParameter("locality");
		String city= request.getParameter("city");
		String addstate= request.getParameter("addstate");
		String zipcode= request.getParameter("zc");
		String accountno= request.getParameter("accno");
		String bankname= request.getParameter("bname");
		String ifsc= request.getParameter("ifsc");
		String bankcity= request.getParameter("bcity");
		
		editbean editBean= new editbean();
		
	
		editBean.setContact(contact);
		editBean.setStreet(street);
		editBean.setLocality(locality);
		editBean.setCity(city);
		editBean.setAddstate(addstate);
		editBean.setZipcode(zipcode);
		editBean.setAccountno(accountno);
		editBean.setBankname(bankname);
		editBean.setIfsc(ifsc);
		editBean.setBankcity(bankcity);

		
		HttpSession session =request.getSession();
		String uid=(String)session.getAttribute("uname");
		
		
		editdao editDao = new editdao();
		
		String userRegistered = editDao.registerUser(editBean,uid);
		
	
		if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		{
			request.getRequestDispatcher("/studenthome.html").forward(request, response);
		}
		else   
		{
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/editdetails.jsp").include(request, response);
		}
	}
	}

