<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function Logout()
{
	window.alert("You have been successfully logged out!!");
	
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="aboutus.css">
<link rel="stylesheet" type="text/css" href="style2.css">
<title>Eligible Students</title>

</head>
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 1px;
}
</style>



<style>
table {
  width:100%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
table#t01 tr:nth-child(even) {
  background-color: #eee;
}
table#t01 tr:nth-child(odd) {
 background-color: #fff;
}
table#t01 th {
  background-color: black;
  color: white;
}
</style>



<div class="w3-top">
  <div class="w3-bar  w3-red w3-padding w3-card" style="letter-spacing:4px;">
    <a href="#Eligible" class="w3-bar-item w3-button w3-hover-white">State Scholarship</a>
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="http://localhost:8086/ScholarshipProject/Adminhome.jsp" class="w3-bar-item w3-button w3-hover-white">Home</a>
      <a href="http://localhost:8086/ScholarshipProject/aboutus.html#about" class="w3-bar-item w3-button w3-hover-white">About</a>
      <a href="http://localhost:8086/ScholarshipProject/aboutus.html#contact" class="w3-bar-item w3-button w3-hover-white">Contact</a>
  <form method="post" action="adminlogout" onclick="Logout()">
 <button class="w3-button w3-red w3-padding-medium w3-medium ">Logout</button></form>
</form>
    </div>
  </div>
</div>


<div class="content">
<br><br><br><br>
<h1>Eligible Applicants</h1>
</div>

<%@page import="java.sql.*" %>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Scholarship", "root", "root");
	Statement statement = con.createStatement(); 
	ResultSet resultSet = statement.executeQuery("select uid,firstname,lastname,income,tenth,twelth from Student2 where (income<150000) AND (tenth>85) AND (twelth>80) AND (status='REJECTED')");
	
	out.print("<form action="+"Selected.jsp"+ " method="+"post"+">");
	
	out.print("<table class=t1>");
	out.print("<table width=500 height=250 border=1px align=center>");
	out.print("<tr>");
    out.print("<th>Student ID</th>");
    out.print("<th>First name</th>");
    out.print("<th>Last Name</th>");
    out.print("<th>Income</th>");
    out.print("<th>Tenth %</th>");
    out.print("<th>Twelth %</th>");
    out.print("<th>Approve Applicant</th>");
  	out.print("</tr>");
	
  	int size=0;
  	try{
  		resultSet.last();
  		size=resultSet.getRow();
  		resultSet.beforeFirst();
  	}
  	catch(Exception e){
  		out.print(e);
  	}
  	
  
	
	int i=0;
	while(resultSet.next()) 
	{
		String studid= resultSet.getString("uid");
		String firstnameDB = resultSet.getString("firstname"); 
		String lastnameDB = resultSet.getString("lastname");
		String incomeDB = resultSet.getString("income");
		String tenthDB = resultSet.getString("tenth");
		String twelthDB = resultSet.getString("twelth");
		out.print("<tr>");
		out.print("<td>"+studid+"</td>");
		out.print("<td>"+firstnameDB+"</td>");
		out.print("<td>"+lastnameDB+"</td>");
		out.print("<td>"+incomeDB+"</td>");
		out.print("<td>"+tenthDB+"</td>");
		out.print("<td>"+twelthDB+"</td>");
	
		out.print("<td><center><input type="+"checkbox" +" name="+"selected" +" value="+studid+"></center></td>");
		
		out.print("</tr>");
		i++;
		out.print("</tr>");
	}
	
	session.setAttribute("csize",size);
	out.print("</table>");
	
	
	
	out.print("<button class=button  id="+"UpdateStatus"+" type="+"submit"+">Update Status</button>");
	out.print("</form>");
	
	
}
catch(Exception e)
{
	System.out.println(e);
}

%>

</font>
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
 
 <p>2019 State Scholarship</p>
</footer>
</body>
</html>