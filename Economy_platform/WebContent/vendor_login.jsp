<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <head><link rel="stylesheet" type="text/css" href="css_style.css"/></head>
<script language="javascript"> 
function G1()                                    
{ 
   
    if(document.RegForm.fname.value =="")                                  
    {
    	alert('Please Enter First Name');
       	
    	document.getElementById('fname').style.color="red";
       	
    	
         return false;
    } 
    
    if(document.RegForm.lname.value =="")                                
    	    {
    	    	
    	    	 alert('Please Enter Last Name');
    	    	 document.getElementById('fname').style.color="red";
    	         return false;
    	    } 
    
    
    if(document.RegForm.age.value =="")                                
    {
    	
    	 alert('Please Enter your Age');
    	 document.getElementById('age').style.color="red";
         return false;
    } 
    
    if(document.RegForm.gender.value =="")                                
    {
    	
    	 alert('Please Enter your gender');
    	 document.getElementById('gender').style.color="red";
         return false;
    } 
    
    if(document.RegForm.gender.value =="")                                
    {
    	
    	 alert('Please Enter your gender');
    	 document.getElementById('gender').style.color="red";
         return false;
    } 
    
    if(document.RegForm.uid.value =="")                                
    {
    	
    	 alert('Please Enter your valid user id');
    	 document.getElementById('uid').style.color="red";
         return false;
    } 
    if(document.RegForm.Password.value =="")                                
    {
    	
    	 alert('Please Enter your Password');
    	 document.getElementById('Password').style.color="red";
         return false;
    } 
    
    return true; 
}</script> 
  
<style> 
header {
 
  background-size:cover;
  text-align: center;
  color:black;
  position:relative;
   z-index: 0;
   margin: 0;
    padding: 0px; 
    border: 0;
     outline: 0; 
     font-size: 100%; 
     vertical-align: baseline;
}
G1 {                                         
    margin-left: 70px; 
    font-weight: bold ; 
    float: left; 
    clear: left; 
    width: 100px; 
    text-align: left; 
    margin-right: 10px; 
    font-family:sans-serif,bold, Arial, Helvetica; 
    font-size:14px; 
    border: 1px solid red;
} 
:alert
{
	background: red;
}
body{
 
background-size:cover; 
background-image: linear-gradient(rgba(50,62,67,67), rgba(192,192,192,0.3)),url('images/40.jpg');
background-repeat: no-repeat;
}
label{
  color:white;
  
}
img{
  filter: brightness(50%);
}
* {box-sizing: border-box}
/* Full-width input fields */
input[type=text], input[type=password] ,select{
  width: 100%;
  padding: 10px;
  margin: 5px 0 15px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
 
input[type=text]:focus, input[type=password]:focus {
  background-color: #e5dfda;
  outline: none;
}
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
/* Set a style for all buttons */
button {
  background-color:#b27943;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
button:hover {
  opacity:1;
}
/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #704b28;
}
/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}
/* Add padding to container elements */
.container {
    top:250px;
  width:50%;
  left:25%;
position:absolute;
  padding: 20px;
  background: black;
  opacity:0.8;
}
/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
</head>
<body  >

    <header>
<br><br><br><br><br>
 <div> <h2> ${param.msg1}</h2></div>
    <h1>Vendor Login Form</h1>
    <p>Please fill in this form to login to your account with Mojo Bazzar.</p>
    </header><br>
<form name="RegForm" action="V_LoginFilter.do"  method="post"  style="border:0px solid #ccc; opacity:2" ;>
  <div class="container">
       <label for="lname">Username</label>
    <input type="text" name="username" placeholder="Username" required>
     <label for="lname">Password</label>
        <input type="password" name="password" placeholder="Password" required>
       
    <div class="clearfix">
     <button type="submit" class="signupbtn" onclick="return G1()"><b>Login</b></button>
      <button type="reset" class="cancelbtn " onclick=" location.href='vendor_login.jsp'"><b>Return to home</b></button>
 
    </div>
  </div>
</form>


</body>
</html>