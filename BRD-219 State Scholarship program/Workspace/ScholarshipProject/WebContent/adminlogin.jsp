<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<head>
>
<meta charset="utf-8">
<title>Admin Login</title>
<link rel="stylesheet" href="aboutus.css">
<link rel="stylesheet" href="style.css">
<script> 
function validate()
{ 
var username = document.form.username.value; 
var password = document.form.password.value;
if (username==null || username=="")
{ 
alert("Username cannot be blank"); 
return false; 
}
else if(password==null || password=="")
{ 
alert("Password cannot be blank"); 
return false; 
} 
}
</script>
</head>
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 5px;
}
</style>
<body>
<div class="w3-top">
  <div class="w3-bar  w3-red w3-padding w3-card" style="letter-spacing:4px;">
    <a href="#home" class="w3-bar-item w3-button w3-hover-white">State Scholarship</a>
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="http://localhost:8086/ScholarshipProject/Home.jsp" class="w3-bar-item w3-button w3-hover-white">Home</a>
      <a href="http://localhost:8086/ScholarshipProject/aboutus.html#about" class="w3-bar-item w3-button w3-hover-white">About</a>
      <a href="http://localhost:8086/ScholarshipProject/aboutus.html#contact" class="w3-bar-item w3-button w3-hover-white">Contact</a>
    </div>
  </div>
</div>
<div class="w3-container w3-red  w3-center w3-hide-small " style="padding:300px">

<div class ="loginBox">
<img src="12.png" class="user">
<h2>Admin Log In </h2>
<form name="form" action="LoginServlet" method="post" onsubmit="return validate()">
<p>User Id</p>
<input type="text" name="username" placeholder="Enter User Id">
<p>Password </p>
<input type="password" name="password" placeholder="*******">
   
 <br>
  
<input type="submit" name="" value="Log In">
<a href="http://localhost:8086/ScholarshipProject/forgetadmin.html">Forget Password  ? 
<br>
<span style="color:white"><%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage")%></span>
</form>
</div></div>

<footer class="w3-container w3-padding-64 w3-center w3-opacity" >  
 
 <p>2019 State Scholarship</p>
</footer>

</body>
</html>
