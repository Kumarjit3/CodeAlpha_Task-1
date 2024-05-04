<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student's Page</title>
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
     width: 200px;
     height: 80px;
     font-size: 17px;
     color: white;
     border: 2px solid white;
     background-color: red;
     border-radius: 10px;
  }
  
  #bt2
  {
     width: 200px;
     height: 80px;
     margin-left: 40px;
     font-size: 17px;
     color: white;
     border: 2px solid white;
     background-color: deeppink;
     border-radius: 5px;
  }
  
  #bt2:hover
  {
     width: 200px;
     height: 80px;
     font-size: 17px;
     color: white;
     border: 2px solid white;
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
        String fname = (String)session.getAttribute("StudentFirstName");
        fname = fname.toUpperCase();
        String lname = (String)session.getAttribute("StudentLastName");
        lname = lname.toUpperCase();
        String dept = (String)session.getAttribute("StudentDept");
        dept = dept.toUpperCase();
     %> 
     
     <div id="b2">
          Std. <%= fname %> <%= lname %> 
     </div>

     <div id="b3">
         DEPARTMENT OF <%= dept %>
     </div>
        
     <div id="b4">
         
         <form action="StudentAttendance"> <button id="bt1"> Attendance History </button>  </form>
         <a href="StudentInfo.jsp"> <button id="bt2"> Your Information </button>  </a>
                  
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