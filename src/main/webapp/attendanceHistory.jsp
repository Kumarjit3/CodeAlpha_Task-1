<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attendance History Page-1</title>
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
    margin-top: 40px;
    border-bottom: 2px solid white;
  }
  
#b4
{
   margin-top: 50px;
   display: flex;
   justify-content: center;
   color: blue;
   font-size: 20px;
}

#b5
{
   width: 450px;
   height: 280px;
   background-color: navy;
   text-align: center;
   border: 7px solid white;
}

#p1
{
   color: orange;
   font-size: 23px;
   margin-top: 10px;
   
}


#b7
{
   margin-left: 70px;
   margin-top: 50px;
   width: 300px;
   height: 35px;
   background-color: yellow;
   border: 2px solid orange;
}


button
{
   margin-top: 20px;
   width: 80px;
   height: 35px;
   background-color: yellow;
   border: 2px solid yellow;
   color: blue;
   font-size: 15px;
}

button:hover
{
   width: 80px;
   height: 35px;
   background-color: orange;
   border: 2px solid orange;
   color: blue;
   font-size: 15px;
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
     <div id="b5">
     <form action="AttendanceHistoryPage">
     
      <div id="p1"> <u> Select Semester </u> </div>
    
     
      <div id="b7">
      <label for="selector2">Select Semester : </label>
        <select name="semester" id="selector2">
          <option value="I">I</option>
          <option value="II">II</option>
          <option value="III">III</option>
          <option value="IV">IV</option>
          <option value="V">V</option>
          <option value="VI">VI</option>
        </select>
       </div>
       
         <br> 
              <button>Submit</button>
        
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