<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teachers Page</title>
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
    margin-top: 30px;
    border-bottom: 2px solid white;
  }
  
  #b4
  {
    display: flex;
    justify-content: center;
    margin-top: 50px;
  }
  
  #bt1
  {
     width: 200px;
     height: 80px;
     font-size: 17px;
     color: white;
     border: 2px solid white;
     background-color: deeppink;
     border-radius: 5px;
  }
  
  #bt1:hover
  {
     background-color: red;
     border-radius: 10px;
  }
  
  #bt2
  {
     width: 200px;
     height: 80px;
     margin-left: 20px;
     font-size: 17px;
     color: white;
     border: 2px solid white;
     background-color: deeppink;
     border-radius: 5px;
  }
  
  #bt2:hover
  {
     background-color: red;
     border-radius: 10px;
  }
  
  #b5
  {
    display: flex;
    justify-content: center;
    margin-top: 20px;
  }
  
  #bt3
  {
     width: 200px;
     height: 80px;
     font-size: 17px;
     color: white;
     border: 2px solid white;
     background-color: deeppink;
     border-radius: 5px;
  }
  
  #bt3:hover
  {
     background-color: red;
     border-radius: 10px;
  }
  
  #bt4
  {
     width: 200px;
     height: 80px;
     font-size: 17px;
     margin-left: 20px;
     color: white;
     border: 2px solid white;
     background-color: deeppink;
     border-radius: 5px;
  }
  
  #bt4:hover
  {
     background-color: red;
     border-radius: 10px;
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
        
     <div id="b4">
         <a href="addStudent.jsp"> <button id="bt1"> Add New Student </button>  </a>
         <a href="attendance.jsp"> <button id="bt2"> Take Attendance </button>  </a>             
     </div>   
     
     <div id="b5">
         <a href="attendanceHistory.jsp"> <button id="bt3"> Attendance History</button> </a>
         <a href="allStudentsList.jsp"> <button id="bt4"> All Student's List</button> </a>
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