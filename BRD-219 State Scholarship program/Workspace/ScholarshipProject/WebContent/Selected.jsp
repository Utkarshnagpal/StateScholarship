<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="aboutus.css">
<link rel="stylesheet" type="text/css" href="style2.css">


</head>



<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 1px;
}
</style>
<script>
function Logout()
{
	window.alert("You have been successfully logged out!!");
	
}
</script>


<style>
table {
  width:30%;
  
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
  <form method="post" action="adminlogout"  onclick="Logout()">
 <button class="w3-button w3-red w3-padding-medium w3-medium ">Logout</button></form>
</form>
    </div>
  </div>
</div>



<div class="content">
<br><br><br><br>
<h1>Selected Students </h1>
</div>





<body style="background-repeat: no-repeat; background-attachment: fixed)">

<font color="black">

<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Scholarship", "root", "root");
	Statement statement = con.createStatement(); 
	
	int size=(Integer)session.getAttribute("csize");
	String selectID[]= request.getParameterValues("selected");

	out.print("<table class=t2>");
	out.print("<table width=500 height=250 border=1px align=center>");
	out.print("<tr>");
    out.print("<th align=center >Selected Student ID</th>");
  	out.print("</tr>");
	
	for(int i=0;i<selectID.length;i++){
		
		
		out.print("<tr>");
		out.print("<td>"+selectID[i]+"</td>");
		
		
		
		
		
		
		String query="UPDATE Student2 SET status='Selected' where uid='"+selectID[i]+"'" ;
		statement.executeUpdate(query);
		}
	statement.close();
	}
catch(Exception e)
{
	System.out.println(e);
}

%>

</font>
</body>


</html>