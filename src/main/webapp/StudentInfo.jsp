<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Info Page</title>
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
 
 #b4
 {
    display: flex;
    justify-content: center;
    margin-top: 30px;
 }
 
 #b5
 {
    width: 420px;
    height: 270px;
    background-color: white;
    border: 2px solid deeppink;
    border-radius: 5px; 
 }
 
 #b6
 {
   text-align: center;
   margin-top: 10px;
   color: green;
 }
 
 #d7
 {
   text-align: left;
   margin-left: 100px;
   color: blue;
   font-size: 15px;
 }
 
 #p1
 {
    font-size: 20px;
 }
 
 #d7_1
 {
    color: #004E98;
    
 }
 
 #d7_2
 {
    color: #219EBC;
 }
 
 #d7_3
 {
    color: #FB8500;
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
        String fname = (String)session.getAttribute("StudentFirstName");
        fname = fname.toUpperCase();
        String lname = (String)session.getAttribute("StudentLastName");
        lname = lname.toUpperCase();
        String dept = (String)session.getAttribute("StudentDept");
        dept = dept.toUpperCase();
        int sid = (Integer)session.getAttribute("StudentSid");
        String email = (String)session.getAttribute("StudentEmail");
        String sem = (String)session.getAttribute("StudentSem");
        String did = (String)session.getAttribute("StudentDid");
        String pass = (String)session.getAttribute("StudentPass");
     %> 
     
     <div id="b2">
          Std. <%= fname %> <%= lname %> 
     </div>

     <div id="b3">
         DEPARTMENT OF <%= dept %>
     </div>
     
     <div id="b4">
     
        <div id="b5">
         
         <div id="b6">
         
            <p id="p1"> <b> <u>INFORMATION </u> </b> </p>
            
            <div id="d7"> 
            <b id="d7_1"> 1. </b> <b id="d7_2"> NAME : </b> <b id="d7_3"> <%= fname %> <%= lname %> </b> <br>
            <b id="d7_1"> 2. </b> <b id="d7_2"> EMAIL : </b>  <b id="d7_3"> <%= email %> </b>  <br>
            <b id="d7_1"> 3. </b> <b id="d7_2"> PASSWORD : </b> <b id="d7_3"> <%= pass %> </b> <br>
            <b id="d7_1"> 4. </b> <b id="d7_2"> DEPARTMENT :  </b>  <b id="d7_3"> <%= dept %> </b> <br>
            <b id="d7_1"> 5. </b> <b id="d7_2"> DEPARTMENT_ID :  </b> <b id="d7_3">  <%= did %> </b> <br>
            <b id="d7_1"> 6. </b> <b id="d7_2"> STUDENT_ID : </b> <b id="d7_3"> <%= sid %> </b> <br>
            <b id="d7_1"> 7. </b> <b id="d7_2">  SEMESTER : </b> <b id="d7_3"> <%= sem %> </b> <br> <br>
            </div>
           
            <a href="Student1.jsp"> <button id="button1">Back</button></a>
            <a href="index.jsp"> <button id="button2">Home</button></a>
             
         </div>
         
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