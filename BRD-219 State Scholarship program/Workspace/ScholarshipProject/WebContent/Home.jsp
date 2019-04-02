<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<title>State_scholarship</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="CSS1.css">
<link rel="stylesheet" href="CSS2.css">
<link rel="stylesheet" href="CSS3.css">
<link rel="stylesheet" href="CSS4.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="http://localhost:8086/ScholarshipProject/signup.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Sign up</a>
    <a href="http://localhost:8086/ScholarshipProject/studentlogin.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Student login</a>
    <a href="http://localhost:8086/ScholarshipProject/adminlogin.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Admin login</a>
    <a href="http://localhost:8086/ScholarshipProject/aboutus.html" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">About us</a>
  </div>
</div>

<!-- Header -->
<header class="w3-container w3-red  w3-center" style="padding:128px 16px">
  <h1 class="w3-margin w3-jumbo">State Scholarship</h1>
  <p class="w3-xlarge">Paying for school just got easier.</p>
<form action="http://localhost:8086/ScholarshipProject/signup.jsp">
  <button class="w3-button w3-black w3-padding-large w3-large w3-margin-top">Get Started</button></form>
</header>

<img src="s8.jpg" alt="Italian Trulli" style="width:210px;height:200px; position: absolute; top: 646px; right: 245px;">

<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
      <h1>Scholarship</h1>
      <h5 class="w3-padding-32">The State University awards, on the condition that related financial means are provided, scholarships for preparing a dissertation subject to the State Postgraduate Scholarship Programme and State Bechlor's degree Scholarship Programme.</h5>

      <p class="w3-text-grey">Most scholarship awards are merit-based, so qualifying for state-specific aid may require outstanding performance in academics or athletics.
 Each student's level of financial need is significantly considered by scholarship granting agencies, so you may be eligible even if you are not a stand-out student.
  Individual state governments put forth unique approaches to financial aid administration, so eligible state students may be required to submit state-specific financial aid applications, essays and transcripts. 
Professional organizations, colleges, advocacy groups and prominent in-state companies each initiate student scholarships with unique eligibility requirements attached. 
 These public and private scholarships share a common focus on in-state schools and state resident college students.</p>
    </div>

    <div class="w3-third w3-center">
      <i class="fa fa-anchor w3-padding-64 w3-text-red"></i>
    </div>
  </div>
</div>

<!-- Second Grid -->
<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-third w3-center">
      <i class="fa fa-coffee w3-padding-64 w3-text-red w3-margin-right"></i>
    </div>

    <div class="w3-twothird">
<img src="s9.jpg" alt="Italian Trulli" style="width:210px;height:200px; position: absolute; top: 1250px; left: 230px;">
      <h1>Award committe</h1>
      <h5 class="w3-padding-32">The awarding of scholarships and material costs is a task assigned to the university. It is subordinated to the specialised supervision of the Ministry of Education.</h5>

      <p class="w3-text-grey">The decision on the applicant's qualification and the eligibility of the project in every individual case is made by the university's award committee with the faculties in charge being involved.
 The award committee's decision are subject to the legal supervision of the Ministry of Education.<br>
The decision on the applicant's qualification and the eligibility of the project in every individual case is made by the university's award committee with the faculties in charge being involved.
 The award committee's decision are subject to the legal supervision of the Ministry of Education.</p>
    </div>
  </div>
</div>
<img src="123.jpg" alt="Italian Trulli" >

<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
    <h1 class="w3-margin w3-xlarge">Quote of the day: Originality is the essence of true scholarship.<br>
Creativity is the soul of true scholar.</h1>
</div>

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
 
 <p>2019 State Scholarship</p>
</footer>

<script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>

</body>
</html>





