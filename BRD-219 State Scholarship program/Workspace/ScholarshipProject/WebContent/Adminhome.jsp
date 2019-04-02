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
<title>Admin Home</title>

<link rel="stylesheet" href="aboutus.css">
</head>
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 5px;
}
</style>
<div class="w3-top">
  <div class="w3-bar  w3-red w3-padding w3-card" style="letter-spacing:4px;">
    <a href="#Adminhome" class="w3-bar-item w3-button w3-hover-white">State Scholarship</a>
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="http://localhost:8086/ScholarshipProject/Home.jsp" class="w3-bar-item w3-button w3-hover-white">Home</a>
      <a href="http://localhost:8086/ScholarshipProject/aboutus.html#about" class="w3-bar-item w3-button w3-hover-white">About</a>
      <a href="http://localhost:8086/ScholarshipProject/aboutus.html#contact" class="w3-bar-item w3-button w3-hover-white">Contact</a>
  <form method="post" action="adminlogout" onclick="Logout()">
 <button class="w3-button w3-red w3-padding-medium w3-medium ">Logout</button></form>
</form>
    </div>
  </div>
</div>


<div class="w3-container w3-red  w3-center w3-hide-small " style="padding:160px">
  <h1 class="w3-margin w3-jumbo">ADMIN HOME</h1>
  <p class="w3-xlarge">When you learn, Teach.When you get, Give.</p>
<form action="http://localhost:8086/ScholarshipProject/Eligible.jsp">
 <div> <button class="button1 w3-center w3-button w3-col s6 tablink w3-black w3-padding-large w3-large w3-margin-top">Eligible</button></form></div>
 <form action="http://localhost:8086/ScholarshipProject/Ineligible.jsp">
   <div><button class="button2 w3-button w3-col s6 tablink w3-black w3-padding-large w3-large w3-margin-top">In-Eligible</button></form></div>
</div>
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
 
 <p>2019 State Scholarship</p>
</footer>

</body>
</html>




