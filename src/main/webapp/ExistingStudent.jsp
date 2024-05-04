<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Warning Page! 'Existing Student'</title>
<link rel="stylesheet" href="Home.css">

 <style type="text/css">
 
 #b2
 {
    display: flex;
    justify-content: center;
 }
 
 #b3
 {
    width: 400px;
    height: 250px;
    background-color: white;
    border: 2px solid deeppink;
    border-radius: 5px; 
 }
 
 #b4
 {
   text-align: center;
   margin-top: 20px;
   color: red;
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
     
     <div id="b2">
     
        <div id="b3">
         
         <div id="b4">
         
           <b id="bb1"> <u>RESULT</u> </b> <br> 
            <p> We Already Have This Student Information! </p>
           <b id="bb1"><u>SUGGESTION</u></b> <br>
            <p id="pp1"> You Can Only Store New Student's Information </p> <br>
           
            <a href="addStudent.jsp"> <button id="button1">Back</button></a>
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