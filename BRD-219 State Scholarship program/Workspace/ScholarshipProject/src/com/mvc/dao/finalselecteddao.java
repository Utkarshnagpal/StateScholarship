package com.mvc.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mvc.bean.finalselectedbean;
import com.mvc.util.DBConnection;

public class finalselecteddao {

	public String updatefinal(finalselectedbean finalselectedBean)
	{
		int count=0;
		String studID[] = finalselectedBean.getStudid(); 
		int len= studID.length;
		Connection con = null;
		PreparedStatement preparedStatement = null;

		try
		{
			con = DBConnection.createConnection();
			
			for(int j=0;j<len;j++)
			{
			String query = "update Student2 set status=\"Selected\" where uid="+studID[j]; 
			preparedStatement = con.prepareStatement(query);
			
			int i = preparedStatement.executeUpdate();
			if(i!=0)
				count++;
				
			}
			if (count==len)
			{
				return "SUCCESS";
				} 
			}

		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "Oops.. Something went wrong there..!";  
	}
}
