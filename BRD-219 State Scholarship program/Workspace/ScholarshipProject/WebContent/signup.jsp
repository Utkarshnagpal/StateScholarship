<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="new2222.css">
<link rel="stylesheet" href="aboutus.css">
<link rel="stylesheet" href="CSS1.css">
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 1px;
}
</style>
<head>
<script>
function Registration()
{
	window.alert("Registration details saved successfully");
	
}
</script>
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
<script>
function validate() {

if(document.reg.pwd.value!=document.reg.cpwd.value)
	{
		alert("Password Mismatch!!! Please Enter the right password");
		return false;
	}

var tmarks=document.reg.telth.value;	
if((tmarks>100) || (tmarks<0))
    {
	document.reg.tenth.focus(); 
	alert("please enter appropriate percentage");
	return false;
    }
	
var twmarks=document.reg.twelth.value;
if((twmarks>100) || (twmarks<0))
    {
	document.reg.twelth.focus(); 
	alert("please enter appropriate percentage");
	return false;
    }
var gmarks=document.reg.graduation.value;
if((gmarks>100) || (gmarks<0))
    {
	document.reg.graduation.focus(); 
	alert("please enter appropriate percentage");
	return false;
    }

	return(true);
}
	

</script>
<header class="w3-container w3-red  " style="padding:1000px">
</head>
<br><br><br><br><br>
<div class=head>
<h1><CENTER>SIGN UP</CENTER> </h1></div>
<form name="reg" method="post" action="signupservlet" onsubmit="return validate();">


<div class="content">
<table align="center">

<th><h1>Login Credentials- </h1></th>
<tr><td>User ID <span class="red-star">*</span></td>  <td><input type="text" name="uid" required oninvalid="alert('Please update the highlighted mandatory field(s)');"> </td>
</tr>

<tr><td>Password <span class="red-star">*</span></td>      <td><input type="text" name="pwd" required oninvalid="alert('Please update the highlighted mandatory field(s)');"></td>
<br>
<tr><td>Confirm Password <span class="red-star">*</span></td><td><input type="text" name="cpwd" required oninvalid="alert('Please update the highlighted mandatory field(s);')"></td>
<br></table>



<table align="center">


<th><h1>  Personal Details- </h1></th>
<tr><td>First name <span class="red-star">*</span></td>  <td><input type="text" name="fname" required oninvalid="alert('Please update the highlighted mandatory field(s).’);"></td>
</tr>

<tr><td>Last name <span class="red-star">*</span></td>      <td><input type="text" name="lname" required></td>
<br>

<tr><td>Age <span class="red-star">*</span></td>       <td>
	
	<select size="1" name="age">
	
	<option value="18">18</option>
	<option value="19">19</option>
	<option value="20">20</option>
	<option value="21">21</option>          
	<option value="22">22</option>
	<option value="23">23</option>
	<option value="24">24</option>
	<option value="25">25</option>
	<option value="26">26</option>
	<option value="27">27</option>
	<option value="28">28</option>
	<option value="29">29</option>
	<option value="30">30</option>
	<option value="31">31</option>
	<option value="32">32</option>
	<option value="33">33</option>
	<option value="34">34</option>
	<option value="35">35</option>
	<option value="36">36</option>
	<option value="37">37</option>
	<option value="38">38</option>
	<option value="39">39</option>
	<option value="40">40</option>
	<option value="41">41</option>
	<option value="42">42</option>
	<option value="43">43</option>
	<option value="44">44</option>
	<option value="45">45</option>
	<option value="46">46</option>
	<option value="47">47</option>
	<option value="48">48</option>
	<option value="49">49</option>
	<option value="50">50</option>
	<option value="51">51</option>
	<option value="52">52</option>
	<option value="53">53</option>
	<option value="54">54</option>
	<option value="55">55</option>
	<option value="56">56</option>
	<option value="57">57</option>
	<option value="58">58</option>
	<option value="59">59</option>
	<option value="60">60</option>
	<option value="61">61</option>
	<option value="62">62</option>
	<option value="63">63</option>
	<option value="64">64</option>
	<option value="65">65</option>
	<option value="66">66</option>
	<option value="67">67</option>
	<option value="68">68</option>
	<option value="69">69</option>
	<option value="70">70</option>
	<option value="71">71</option>
	<option value="72">72</option>
	<option value="73">73</option>
	<option value="74">74</option>
	<option value="75">75</option>
	<option value="76">76</option>
	<option value="77">77</option>
	<option value="78">78</option>
	<option value="79">79</option>
	<option value="80">80</option>
	<option value="81">81</option>
	<option value="82">82</option>
	<option value="83">82</option>
	<option value="84">84</option>
	<option value="85">85</option>
	<option value="86">86</option>
	<option value="87">87</option>
	<option value="88">88</option>
	<option value="89">89</option>
	<option value="90">90</option>
	<option value="91">91</option>
	<option value="92">92</option>
	<option value="93">93</option>
	<option value="94">94</option>
	<option value="95">95</option>
	<option value="96">96</option>
	<option value="97">97</option>
	<option value="98">98</option>
	<option value="99">99</option>
	<option value="100">100</option>
	<option value="101">101</option>
	<option value="102">102</option>
	<option value="103">103</option>
	<option value="104">104</option>
	<option value="105">105</option>
	<option value="106">106</option>
	<option value="107">107</option>
	<option value="108">108</option>
	<option value="109">109</option>
	<option value="110">110</option>
	<option value="111">111</option>
	<option value="112">112</option>
	<option value="113">113</option>
	<option value="114">114</option>
	<option value="115">115</option>
	<option value="116">116</option>
	<option value="117">117</option>
	<option value="118">118</option>
	<option value="119">119</option>
	<option value="120">120</option>


	</select></td>
	
	<tr><td>Gender <span class="red-star">*</span></td>       <td>
	<select  name="gender" size="1">
	
<option value="m">Male</option>
<option value="f">Female</option>
     </select></td>

<tr><td>Contact No</td>         <td><input type="tel" name="cn" maxlength="10" ></td>

<tr><td>Father's name <span class="red-star">*</span></td>             <td><input type="text" name="faname" required></td>

<tr><td>Mother's name <span class="red-star">*</span></td>      <td><input type="text" name="mname" required></td>
<br>
<tr><td>Income Detail <span class="red-star">*</span></td>         <td><input type="number" step="any" name="id"  min="0" placeholder="Yearly in rupees"  required></td></table><br>
<table align="center">
<th><h1>Education Details-</h1></th>

 

<tr><td>10th Board  <span class="red-star">*</span> </td>         <td>      <input type="number" step="any" name="tenth"  placeholder="in %" min="1" max="100" required></td>

<tr><td>School      <span class="red-star">*</span> </td>         <td>      <input type="text" name="tschool" required></td>

<tr><td>City     <span class="red-star">*</span>  </td>         <td>      <input type="text" name="tcity" required></td>

<tr><td>State     <span class="red-star">*</span></td>         <td>        <input type="text" name="tstate" required></td>


<tr><td>12th Board   <span class="red-star">*</span> </td>         <td>     <input type="number" step="any" name="twelth"  placeholder="in %"  min="1" max="100"  required></td>

<tr><td>School   <span class="red-star">*</span> </td>         <td>         <input type="text" name="twschool" required></td>

<tr><td>City       <span class="red-star">*</span></td>         <td>      <input type="text" name="twcity" required></td>

<tr><td>State      <span class="red-star">*</span> </td>         <td>      <input type="text" name="twstate" required></td>

<tr><td>Graduation    </td>         <td>     <input type="number" step="any" name="graduation"  placeholder="in %"  min="1" max="100"  ></td>

<tr><td>School      </td>         <td>       <input type="text" name="gschool" ></td>

<tr><td>City      </td>         <td>       <input type="text" name="gcity" ></td>

<tr><td>State       </td>         <td>      <input type="text" name="gstate" ></td>
</table>
<table align="center">
<th><h1>  Address Details-</h1></th>

 

<tr><td>Street     <span class="red-star">*</span> </td>         <td>        <input type="text" name="street" required></td>

<tr><td>Locality     </td>         <td>         <input type="text" name="locality" ></td>

<tr><td>City       <span class="red-star">*</span> </td>         <td>     <input type="text" name="city" required></td>

<tr><td>State    <span class="red-star">*</span>  </td>         <td>        <input type="text" name="addstate" required></td>

<tr><td>Zip Code  <span class="red-star">*</span>  </td>         <td>     <input type="tel" name="zc" maxlength="6" required></td>
</table><br>
<table align="left">


<th><h1>Caste Details-</h1></th>

 


 <tr><td>Caste <span class="red-star">*</span> <input type="text" name="caste" required></td>
<tr  ><td><form  action="/action_page.php">  Upload File <span class="red-star">*</span> <input type="file" name="pic" accept="image/*"></td><br>

</tr><table>
<br>
<table align="center">
<th><h1>  Bank Details- </h1></th>


<tr><td>Account No    <span class="red-star">*</span> </td> </td>         <td>       <input type="tel" name="accno" maxlength="50" required> </td>

<tr><td>Bank Name      <span class="red-star">*</span> </td></td>         <td>          <input type="text" name="bname" required></td>

<tr><td>IFSC Code     <span class="red-star">*</span> </td> </td>         <td>          <input type="text" name="ifsc" required> </td>

<tr><td>City          <span class="red-star">*</span> </td></td>         <td>      <input type="text" name="bcity" required> </td>
</table>
<br>
             <pre>            Fields marked with (<span class="red-star">*</span>) are mandatory.</pre>


<pre>
               <input type="reset" >               <input type="submit" value="Save" onclick="Registration()"></pre>
</form>
</div>
</table>
</table>
</div>
</form>
</header>

<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
 
 <p>2019 State Scholarship</p>
</footer>


</body>



</html>