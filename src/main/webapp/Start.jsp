<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Start Page</title>
<link rel="stylesheet" href="Home.css">
</head>
<style type="text/css">

img
{
   width: 217px;
   height: 170px;
   border: 2px solid yellow
}

#i2
{
  margin-left: 15px; 
}

table
{
    margin-top: 70px;
    display: flex;
    justify-content: center;
}


#b2
{
    display: flex;
    justify-content: center;
    margin-top: 15px;
}

#a11
{
	width: 220px;
	height: 70px;
	border: 2px solid white;
	background-color: deeppink;
	color: white;
	font-size: 18px;
}

#a11:hover
{
	border: 2px solid deeppink;
	background-color: white;
	color: deeppink;
}

#a22
{
	width: 220px;
	height: 70px;
	border: 2px solid white;
	background-color: deeppink;
	color: white;
	margin-left: 20px;
	font-size: 18px;
}

#a22:hover
{
	border: 2px solid deeppink;
	background-color: white;
	color: deeppink;
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
<body>

     <div id="b1">
        <p> ATTENDANCE MANAGEMENT SYSTEM </p>
     </div> 
     
     <table>
     
       <tr id="tr">
       
            <td id="t1"> <img src="studentAvatar1.png" id="i1"> </td>
            <td id="t2"> <img src="teacheravatar1.png" id="i2"> </td>
       
       </tr>
     
     </table>
     
     <div id="b2">
        
               <a href="Student.jsp"> <button id="a11"> STUDENT LOGIN </button> </a>
               <a href="Teacher.jsp"> <button id="a22"> TEACHER LOGIN </button> </a>
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