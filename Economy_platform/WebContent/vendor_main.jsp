<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" type="text/css" href="css_style1.css"/>
<link rel="stylesheet" type="text/css" href="vendor_css.css"/>

<title>MR. MOJO BAZZAR </title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script language="javascript" type="text/javascript">
  $("a").click(function() { // do stuff
   return false; });
</script>
<style>
.target {
    width:50%;
    overflow: hidden;
    left:25%; 
    height:100%;
    /*position: static;*/
  -ms-flex: 70%; 
  flex: 70%;
  background-color: white;
  padding: 20px;
  background-size:cover; 
/*background-image: linear-gradient(rgba(0,10,30,0.6), rgba(192,192,192,0.3));*/
/*background-repeat: no-repeat;*/

}

.target > div {
    display:none;
}

.target > div:target{
    display:inline;
}
a:link {
  text-decoration: none;
}
a.side:link, a.side:visited {
  background-color:black;
  color: white;
  padding: 10px 15px;
  width: 100%;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a.side:hover, a.side:active {
  background-color:black;
}
a.navbar  {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}
.row{
  

  text-decoration: none;
 
}
.container {
  width:50%;
  height: 100%;
  /*left:50%;*/
position:relative;
display:table;
  padding: 20px;
  background: black;
  opacity:0.78;
  /*z-index: 9;*/
}
 .header{
  position: static;
}
hr{
  border-top: 0;
  border-width: 5px;
  border-color: black;
}
</style>
</head>

<%
String unm = request.getAttribute("username").toString();
request.getSession().setAttribute("uname",unm);
%>


<body bgcolor:"#00b300">



<div class="header">
<img src="images/png1.png" class="logo"/>
</div>

<div class="navbar">

  <a href="#">Home</a>
  <a href="#">Departments</a>
  <a href="#">Top picks</a>  
 
</div>

<div class="row">
  <div class="side">
  <strong>Welcome VendorId: <%=unm %></strong><br><br>
    <a href="#eprd">Enter Personal Details </a><br><br>
    <a href="#upd"> Update Personal Details </a><br><br>
    <a href="#apd"> Add Product Details </a><br><br>
    <a href="#epd"> Edit Product Details </a><br><br>
  <a href="">About Us</a><br><br>
   <a href="">Contact Us</a><br><br>
   <a href="">Help & Support</a><br><br>
  </div>
<div class="target">
    
    <div id="eprd">
       <form name="RegForm" action="Registration.do"  method="post"  style="border:0px solid #ccc; opacity:2" ;>
  <div class="container">
    <br><br>
    <label for="Vendor_UserId">Vendor ID</label>
    <input type="text" placeholder="Enter your ID" name="Vendor_UserId" >

    <label for="fname">First Name</label>
    <input type="text" placeholder="Enter First Name in Capital Letters" name="fname" >

    <label for="lname">Last Name</label>
    <input type="text" placeholder="Enter Last Name" name="lname" >
    
    <label for="age">Age</label>
    <input type="text" placeholder="Enter Age" name="age" >
    
    <label for="gender">Gender</label>
    <select name="gender" placeholder="Gender"> 
            <option label="Male">Male</option>
            <option label="Female">Female</option>
            <option label="Transgender">Others</option>
    </select>

    <label for="contactnumber">Contact Number</label>
    <input type="text" placeholder="Enter Contact Number" name="contactNum" >

    <label for="contactnumber">Address</label>
    <input type="text" placeholder="Enter your address" name="Address" >

    <label for="City">City</label>
    <input type="text" placeholder="Enter city name" name="City">

    <label for=" Zip_Code">Zip Code</label>
    <input type="text" placeholder="Enter zip code" name="Zip_Code">
  
    <label for=" Landline">Landline</label>
    <input type="text" placeholder="Enter Landline number" name="Landline">

    <label for=" Email">Email</label>
    <input type="text" placeholder="Enter your Email" name="Email">

    <label for="Other_Contact_info">Detailed Contact info</label>
    <input type="text" placeholder="Other Contact info" name="Other_Contact_info" >
    
   <!-- <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>-->
    

    <div class="clearfix">
         <button type="submit" class="signupbtn" onclick="return G1()"><b>Sign Up</b></button>
         <button type="reset" class="cancelbtn"><b>Reset</b></button>
    </div>

    </div>

</form>
    </div>
    
    <div id="upd">
    <form name="RegForm" action="Registration.do"  method="post"  style="border:0px solid #ccc; opacity:2" ;>
  <div class="container">
    <br><br>
    <label for="Vendor_UserId">Vendor ID</label>
    <input type="text" placeholder="Enter your ID" name="Vendor_UserId" >

    <label for="fname">First Name</label>
    <input type="text" placeholder="Enter First Name in Capital Letters" name="fname" >

    <label for="lname">Last Name</label>
    <input type="text" placeholder="Enter Last Name" name="lname" >
    
    <label for="age">Age</label>
    <input type="text" placeholder="Enter Age" name="age" >
    
    <label for="gender">Gender</label>
    <select name="gender" placeholder="Gender"> 
            <option label="Male">Male</option>
            <option label="Female">Female</option>
            <option label="Transgender">Others</option>
    </select>

    <label for="contactnumber">Contact Number</label>
    <input type="text" placeholder="Enter Contact Number" name="contactNum" >

    <label for="contactnumber">Address</label>
    <input type="text" placeholder="Enter your address" name="Address" >

    <label for="City">City</label>
    <input type="text" placeholder="Enter city name" name="City">

    <label for=" Zip_Code">Zip Code</label>
    <input type="text" placeholder="Enter zip code" name="Zip_Code">
  
    <label for=" Landline">Landline</label>
    <input type="text" placeholder="Enter Landline number" name="Landline">

    <label for=" Email">Email</label>
    <input type="text" placeholder="Enter your Email" name="Email">

    <label for="Other_Contact_info">Detailed Contact info</label>
    <input type="text" placeholder="Other Contact info" name="Other_Contact_info" >
    
   <!-- <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>-->
    

    <div class="clearfix">
         <button type="submit" class="signupbtn" onclick="return G1()"><b>Update</b></button>
         <button type="reset" class="cancelbtn"><b>Cancel</b></button>
    </div>

    </div>

</form>
    </div>   

    <div id="apd">Add Product Details</div>
    <div id="epd">Edit Product Details </div>   
</div>

</div>  


<div class="footer">
  <h5>@mr.mojobazzar.com</h5>
</div>
</body>
</html>
