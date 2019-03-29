package com.mvc.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;

public class RegisterDao {
	
	public String registerUser(RegisterBean signupBean)
	{
		String userid=  signupBean.getUserid();
		String password=  signupBean.getPassword();
		
		String firstname= signupBean.getFirstname();
		String lastname= signupBean.getLastname();
		String age= signupBean.getAge();
		String gender= signupBean.getGender();
		String contact= signupBean.getContact();
		String fathername= signupBean.getFathername();
		String mothername= signupBean.getMothername();
		int income= signupBean.getIncome();
		int tenth= signupBean.getTenth();
		String tschool= signupBean.getTschool();
		String tcity= signupBean.getTcity();
		String tstate = signupBean.getTstate();
		int twelth= signupBean.getTwelth();
		String twschool= signupBean.getTwschool();
		String twcity=signupBean.getTwcity();
		String twstate = signupBean.getTwstate();
		String graduation= signupBean.getGraduation();
		String gschool= signupBean.getGschool();
		String gcity= signupBean.getGcity();
		String gstate = signupBean.getGstate();
		String street= signupBean.getStreet();
		String locality=signupBean.getLocality();
		String city= signupBean.getCity();
		String addstate= signupBean.getAddstate();
		String zipcode= signupBean.getZipcode();
		String caste = signupBean.getCaste();
		String accountno= signupBean.getAccountno();
		String bankname= signupBean.getBankname();
		String ifsc= signupBean.getIfsc();
		String bankcity= signupBean.getBankcity();
		Connection con = null;
		PreparedStatement preparedStatement = null;
		try
		{
			con = DBConnection.createConnection();
			String query = "insert into Student2(uid, pwd, firstname,lastname,age,gender,contact,fathername,mothername,income,tenth,tschool,tcity,tstate,twelth,twschool,twcity,twstate,graduation,gschool,gcity,gstate,street,locality,city,addstate,zipcode,caste,accountno,bankname,ifsc,bankcity) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; 
			preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
			
			preparedStatement.setString(1, userid);
			preparedStatement.setString(2, password);
			preparedStatement.setString(3, firstname);
			preparedStatement.setString(4, lastname);
			preparedStatement.setString(5, age);
			preparedStatement.setString(6, gender);
			preparedStatement.setString(7, contact);
			preparedStatement.setString(8, fathername);
			preparedStatement.setString(9, mothername);
			preparedStatement.setInt(10, income);
			preparedStatement.setInt(11, tenth);
			preparedStatement.setString(12, tschool);
			preparedStatement.setString(13, tcity);
			preparedStatement.setString(14, tstate);
			preparedStatement.setInt(15, twelth);
			preparedStatement.setString(16, twschool);
			preparedStatement.setString(17, twcity);
			preparedStatement.setString(18, twstate);
			preparedStatement.setString(19, graduation);
			preparedStatement.setString(20, gschool);
			preparedStatement.setString(21, gcity);
			preparedStatement.setString(22, gstate);
			preparedStatement.setString(23, street);
			preparedStatement.setString(24, locality);
			preparedStatement.setString(25, city);
			preparedStatement.setString(26, addstate);
			preparedStatement.setString(27, zipcode);
			preparedStatement.setString(28, caste);
			preparedStatement.setString(29, accountno);
			preparedStatement.setString(30, bankname);
			preparedStatement.setString(31, ifsc);
			preparedStatement.setString(32, bankcity);
			
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
