<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Student Successfully Added</title>
<link rel="stylesheet" href="Home.css">
<style type="text/css">
 
 
 #bb2
  {
    display: flex;
    justify-content: right;
    margin-right: 20px;
    font-size: 22px;
    color: white;
  }
  
  #bb3
  {
    display: flex;
    justify-content: center;
    font-size: 22px;
    color: white;
    border-bottom: 2px solid white;
  }
 
 #b2
 {
    display: flex;
    justify-content: center;
    margin-top: 50px;
 }
 
 #b3
 {
    width: 400px;
    height: 260px;
    background-color: white;
    border: 2px solid deeppink;
    border-radius: 5px; 
 }
 
 #b4
 {
   text-align: center;
   margin-top: 20px;
   color: blue;
 }
 
 #bb1
 {
     color: green;
 }
 
 #pp1
 {
     color: blue;
 }
 
 #button1
 {
   width: 100px;
   height: 40px;
   color: white;
   font-size: 15px;
   background-color: deeppink;
   border: 2px solid deeppink;
 }
 
 #button1:hover
 {
   width: 100px;
   height: 40px;
   color: white;
   font-size: 15px;
   background-color: red;
   border: 2px solid red;
 }
 
 #button2
 {
   width: 100px;
   height: 40px;
   color: white;
   font-size: 15px;
   background-color: deeppink;
   border: 2px solid deeppink;
 }
 
 #button2:hover
 {
   width: 100px;
   height: 40px;
   color: white;
   font-size: 15px;
   background-color: red;
   border: 2px solid red;
 }
 
 #i
 {
    
    color: red;
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
        int Sid = (Integer)session.getAttribute("Sid");
        String Pass = (String)session.getAttribute("Password");
        String Did = (String)session.getAttribute("Did");
        Did = Did.toUpperCase();
     %> 
     
     <% 
        String fname = (String)session.getAttribute("FirstName");
        fname = fname.toUpperCase();
        String lname = (String)session.getAttribute("LastName");
        lname = lname.toUpperCase();
        String dept = (String)session.getAttribute("Dept");
        dept = dept.toUpperCase();
     %> 
     
     <div id="bb2">
         Prof.  <%= fname %> <%= lname %> 
     </div>

     <div id="bb3">
         DEPARTMENT OF <%= dept %>
     </div>
     
     <div id="b2">
     
        <div id="b3">
         
         <div id="b4">
         
           <b id="bb1"> <u>RESULT</u> </b> <br> 
           <p> New Student Information Successfully Added </p>
           <b id="bb1"><u>INFORMATION</u></b> <br>
           <p id="pp1">
                    Your New Student Id Is : <b id="i"> <%= Sid %> </b> <br>
                    Your New Department Id Is : <b id="i"> <%= Did %> </b> <br>  
                    Your New Password Is : <b id="i"> <%= Pass %> </b>  
           </p> 
           
            <a href="addStudent.jsp"> <button id="button1">Back</button></a>
            <a href="index.jsp"> <button id="button2">Home</button></a>
             
         </div>
         
        </div>
     
     </div>


      <div id="footer">
     
      <div id="footer1">
             <a href="https://github.com/Kumarjit3/CodeAlpha_Task-1"> <img alt="s123" src="githubIcon1.jpeg" id="img123"></a>
             <a href="https://www.linkedin.com/in/kumarjit-mongal-64080621b"> <img alt="s123" src="InIcon1.png" id="img123"></a>
             <a href="https://twitter.com/KMongal3"> <img alt="s123" src="XIcon.png" id="img123"></a> <br> <br>
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