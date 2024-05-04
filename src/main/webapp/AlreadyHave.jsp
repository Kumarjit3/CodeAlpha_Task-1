<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>This Class is Already Taken</title>
<link rel="stylesheet" href="Home.css">
<style type="text/css">

#b2
{
   margin: auto;
   margin-top: 50px;
   width: 400px;
   height: 200px;
   background-color: white;
   border: 2px solid deeppink;
   text-align: center;
}

#p1
{
    width: 100%;
    height: 70px;
    font-size: 23px;
    color: white;
    background-color: deeppink;
}

#button1
{
   width: 130px;
   height: 40px;
   color: white;
   font-size: 15px;
   background-color: deeppink;
   border: 2px solid deeppink;
}

#button1:hover
{
   color: white;
   background-color: #014732;
   border: 2px solid #014732;
}

#button2
{
   width: 130px;
   height: 40px;
   color: white;
   font-size: 15px;
   background-color: deeppink;
   border: 2px solid deeppink;
}

#button2:hover
{
   color: white;
   background-color: #014732;
   border: 2px solid #014732;
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
            <br>
            <div id="p1"> Attendance Of This Class Is Already Been Taken. Don't Repeat It </div>
            <br> <br>
            <a href="attendance1.jsp"><button id="button1">Back</button></a>
            <a href="index.jsp"><button id="button2">Home</button></a>
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