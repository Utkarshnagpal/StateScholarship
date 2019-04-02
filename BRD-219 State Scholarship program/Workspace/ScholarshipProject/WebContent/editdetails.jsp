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
function Edit()
{
	window.alert("Edited successfully!!");
	
}
</script>


<link rel="stylesheet" href="aboutus.css">
<link rel="stylesheet" href="CSS1.css">
<link rel="stylesheet" href="editdetailsCSS.css">
</head>
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 1px;
}
</style>
<div class="w3-top">
  <div class="w3-bar  w3-red w3-padding w3-card" style="letter-spacing:4px;">
    <a href="#home" class="w3-bar-item w3-button w3-hover-white">State Scholarship</a>
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="http://localhost:8086/ScholarshipProject/studenthome.html" class="w3-bar-item w3-button w3-hover-white">Home</a>
      <a href="http://localhost:8086/ScholarshipProject/aboutus.html#about" class="w3-bar-item w3-button w3-hover-white">About</a>
      <a href="http://localhost:8086/ScholarshipProject/aboutus.html#contact" class="w3-bar-item w3-button w3-hover-white">Contact</a>
      <form method="post" action="studentlogout" onclick="Logout()">
 <button class="w3-button w3-red w3-padding-medium w3-medium ">Logout</button></form>
 
    </div>
  </div>
</div>

<div class="w3-container w3-red  w3-hide-small " style="padding:450px">
<div class="head">
<h1>EDIT DETAILS</h1>
</div>
<form name="reg" method="post" action="editservlet">


<div class="content">



<table align="center">

<br><br><br>
<th><h1>  Contact Details- </h1></th>


<tr><td>Contact No</td>         <td><input type="tel" name="cn" maxlength="10"  required oninvalid="alert('Please update this field;')" ></td></tr>

</table>
<br>


<table align="center">
<th><h1>  Address Details-</h1></th>

 

<tr><td>Street      </td>         <td>        <input type="text" name="street" required oninvalid="alert('Please update this field;')"></td>

<tr><td>Locality     </td>         <td>         <input type="text" name="locality" required oninvalid="alert('Please update this field;')" ></td>

<tr><td>City        </td>         <td>     <input type="text" name="city" required oninvalid="alert('Please update this field;')"></td>

<tr><td>State      </td>         <td>        <input type="text" name="addstate" required oninvalid="alert('Please update this field;')"></td>

<tr><td>Zip Code    </td>         <td>     <input type="tel" name="zc" maxlength="6" required oninvalid="alert('Please update this field;')"></td>
</table><br>


<table align="center">
<th><h1>  Bank Details- </h1></th>


<tr><td>Account No     </td> </td>         <td>       <input type="tel" name="accno" maxlength="50"  required oninvalid="alert('Please update this field;')"> </td>

<tr><td>Bank Name      </td></td>         <td>          <input type="text" name="bname" required oninvalid="alert('Please update this field;')"></td>

<tr><td>IFSC Code      </td> </td>         <td>          <input type="text" name="ifsc" required oninvalid="alert('Please update this field;')"> </td>

<tr><td>City           </td></td>         <td>      <input type="text" name="bcity" required oninvalid="alert('Please update this field;')"> </td>
</table>
<br>
             


<pre>
              <input type="reset" >               <input type="submit" value="Save" onclick="Edit()"></pre>
              
              
              
</form>
</div>
</div>
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
 
 <p>2019 State Scholarship</p>
</footer>


</body>



</html>