<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Student</title>
<link rel="stylesheet" href="Home.css">

<style type="text/css">

#b2
{
  display: flex;
  justify-content: right;
  margin-right: 20px;
  font-size: 22px;
  color: white;
}
  
#b3
{
  display: flex;
  justify-content: center;
  font-size: 22px;
  color: white;
  border-bottom: 2px solid white;
}
 
#d2
{
  display: flex;
  justify-content: center;
  margin-top: 50px;
}

#d2_1
{ 
  width: 330px;
  height: 440px; 
  background-color: white;
  border: 2px solid deeppink;
  border-radius: 10px;
}
   
#l1
{
      display: flex;
	  justify-content: center;
	  margin-top: 20px;
	  font-size: 22px;
	  color: deeppink;
	  border-bottom: 1px solid deeppink;
	  border-width: 45px;
}

#12
{
   font-size: 17px;
   color: navy;
   argin-right: 95px;
}
   
#13
{
   font-size: 17px;
   color: navy;
   argin-right: 97px;
}
   
#l4
{
   font-size: 17px;
   color: navy;
   margin-right: 110px;
}
   
#l5
{
  font-size: 17px;
  color: navy;
  margin-right: 107px;
}
   
#d2_2
{
   text-align: center;
   margin-top: 20px;
}
   
input
{
    width: 70%;
    height: 25px;
    border: 1.5px solid deeppink;
    outline: none;
    color: navy;
    font-size: 13px;
}
   
input::placeholder
{
   text-align: left;
   padding-left: 5px;
}
   
   /* input[type="email"]::placeholder 
    {         
      text-align: left;
      color: navy;
    }

    input[type="password"]::placeholder 
    {       
      text-align: left;
       color: navy;
    }*/
    
button
{
    width: 100px;
    height: 35px;
    font-size: 13px;
    color: white;
    border: 1.5px solid red;
    background-color: deeppink;
    border-radius: 3px;
}
    
button:hover
{
    width: 100px;
    height: 35px;
    font-size: 13px;
    color: white;
    border: 1.5px solid deeppink;
    background-color: red;
    border-radius: 3px;
}
    
#footer
{
    margin-top: 100px;
	width: 100%;
	height: 170px;
	background-color: skyblue;
}

#footer1
{
   display: flex;
   justify-content: center;
}

#footer2
{
   margin-top: 15px;
   display: flex;
   justify-content: center;
   color: black;  
}

#footer3
{
   margin-top: 20px;
   display: flex;
   justify-content: center;
   color: black;  
}

#img123
{	
    margin-top: 30px;
	width: 25px;
	height:25px;
	border: 2px solid black;
	margin-left: 15px;
	border-radius: 20px; 
}

#img123:hover
{	
	border: 2px solid white;
	border-radius: 20px; 
}

a
{
   text-decoration: none;
}

#f123
{
  margin-left: 20px; 
  margin-top: 5px; 
  color: black;
  border-top: 1.5px solid black;
  border-bottom: 1.5px solid black;
}

#f123:hover
{
   border: 1.5px solid white;
}

#sup123
{
  margin-right: 5px;
}    
    
</style>

</head>
<body>

     <div id="b1">
        <p> ATTENDANCE MANAGEMENT SYSTEM </p>
      </div>
      
       <% 
        String fname = (String)session.getAttribute("FirstName");
        fname = fname.toUpperCase();
        String lname = (String)session.getAttribute("LastName");
        lname = lname.toUpperCase();
        String dept = (String)session.getAttribute("Dept");
        dept = dept.toUpperCase();
     %> 
     
     <div id="b2">
         Prof.  <%= fname %> <%= lname %> 
     </div>

     <div id="b3">
         DEPARTMENT OF <%= dept %>
     </div>
     
     
     <div id="d2">
     
        <div id="d2_1">
        
          <label id="l1"> New Student Registration </label>
          
          <form action="NewStudent">
          
          <div id="d2_2">
          
             <label id="l2"> Enter First Name : </label> <br>
             <input type="text" name="fname" placeholder="First Name"> <br> <br>
          
             <label id="l3"> Enter Last Name : </label> <br>
             <input type="text" name="lname" placeholder="Last Name"> <br> <br>
          
             <label id="l4"> Enter Email Id : </label> <br>
             <input type="email" name="email" placeholder="Email Id"> <br> <br>
             
             <label id="l5"> Enter Semester : </label> <br>
             <input type="text" name="semester" placeholder="I/II/III/...">
             
             <br> <br>
             <button>REGISTER</button>
          
          </div>
          </form>
        
        </div>
     
     </div>
     
         <div id="footer">
     
      <div id="footer1">
             <a href="#"> <img alt="s123" src="githubIcon1.jpeg" id="img123"></a>
             <a href="#"> <img alt="s123" src="InIcon1.png" id="img123"></a>
             <a href="#"> <img alt="s123" src="XIcon.png" id="img123"></a> <br> <br>
      </div>
      
      <div id="footer2">
            <a href="index.jsp" id="f123"> Home </a> 
            <a href="About.jsp" id="f123"> About </a>
            <a href="Contact.jsp" id="f123"> Contact </a> <br>
      </div>
      
      <div id="footer3">
         &#169 2024 Attendance Management System <sup id="sup123"> &#8482 </sup> | All Right Reserved &#174
      </div>

     </div>

</body>
</html>


   