package com.mvc.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mvc.bean.StudentLoginBean;
import com.mvc.util.DBConnection;
import com.mvc.controller.*;
public class StudentLoginDao 
{
	public String authenticateUser(StudentLoginBean studentloginBean)
	{
		String userName = studentloginBean.getUserName(); 
		String password = studentloginBean.getPassword();
		
		
		System.out.println(userName);
		System.out.println(password);
			
		
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String userNameDB = "";
		String passwordDB = "";
		
		
		try
		{
			con = DBConnection.createConnection(); 
			statement = con.createStatement(); 
			resultSet = statement.executeQuery("select uid,pwd from Student2"); 
			while(resultSet.next()) 
			{
				userNameDB = resultSet.getString("uid"); //col name
				passwordDB = resultSet.getString("pwd");//col name
				if(userName.equals(userNameDB) && password.equals(passwordDB))
				{
					return "SUCCESS"; 
				}
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		

		return "Invalid user credentials"; 
}
}
