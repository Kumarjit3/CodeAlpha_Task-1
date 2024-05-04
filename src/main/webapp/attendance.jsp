<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attendance Selector</title>
<link rel="stylesheet" href="Home.css">

<style type="text/css">

#b2
{
   margin-top: 30px;
   display: flex;
   justify-content: center;
   color: blue;
   font-size: 20px;
}

#b3
{
   width: 450px;
   height: 300px;
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

#b4
{
   margin-left: 60px;
   margin-top: 30px;
   width: 300px;
   height: 35px;
   background-color: yellow;
   border: 2px solid orange;
}

#b5
{
   margin-left: 60px;
   margin-top: 20px;
   width: 300px;
   height: 35px;
   background-color: yellow;
   border: 2px solid orange;
}

#b6
{
   margin-left: 60px;
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
     
     <div id="b2">
     <div id="b3">
     <form action="Semester_Class_Selector">
     
      <div id="p1"> <u> Select Semester,Date & Class For Attendance </u> </div>
     
      <div id="b4">
      <label for="selector1">Select Semester : </label>
        <select name="semester" id="selector1">
          <option value="I">I</option>
          <option value="II">II</option>
          <option value="III">III</option>
          <option value="IV">IV</option>
          <option value="V">V</option>
          <option value="VI">VI</option>
        </select>
       </div>
       
       <div id="b5">
        <label for="selector2">Select Class : </label>
        <select name="Aclass" id="selector2">
          <option value="1">1st</option>
          <option value="2">2nd</option>
          <option value="3">3rd</option>
          <option value="4">4th</option>
          <option value="12">1st&2nd</option>
          <option value="23">2nd&3rd</option>
          <option value="34">3rd&4th</option>
         </select>
         </div>
         <br> 
         
         <div id="b6">
              <label for="Date">Enter Date :</label>
              <input type="date" name="date">
         </div>
              <button>Submit</button>
        
         </form>
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