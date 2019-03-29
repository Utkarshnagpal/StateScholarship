package com.mvc.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;

import com.mvc.bean.editbean;
import com.mvc.util.DBConnection;

public class editdao {
	
	public String registerUser(editbean editBean,String uid)
	{
		
		String contact= editBean.getContact();
		String street= editBean.getStreet();
		String locality=editBean.getLocality();
		String city= editBean.getCity();
		String addstate= editBean.getAddstate();
		String zipcode= editBean.getZipcode();
		String accountno= editBean.getAccountno();
		String bankname= editBean.getBankname();
		String ifsc= editBean.getIfsc();
		String bankcity= editBean.getBankcity();
		Connection con = null;
		PreparedStatement preparedStatement = null;
		try
		{
			con = DBConnection.createConnection();
			String query = ("update Student2 SET contact=?,street=?,locality=?,city=?,addstate=?,zipcode=?,accountno=?,bankname=?,ifsc=?,bankcity=? where uid=?") ;  
			preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
			
			preparedStatement.setString(1, contact);
			preparedStatement.setString(2, street);
			preparedStatement.setString(3, locality);
			preparedStatement.setString(4, city);
			preparedStatement.setString(5, addstate);
			preparedStatement.setString(6, zipcode);
			preparedStatement.setString(7, accountno);
			preparedStatement.setString(8, bankname);
			preparedStatement.setString(9, ifsc);
			preparedStatement.setString(10, bankcity);
			preparedStatement.setString(11, uid);
			int i= preparedStatement.executeUpdate();
			if (i!=0) {
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
