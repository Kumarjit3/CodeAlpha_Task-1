<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login Page</title>
<link rel="stylesheet" href="Home.css">

<style>

   #d2
   {
	 display: flex;
	 justify-content: center;
	 margin-top: 50px;
   }

   #d2_1
   {
	width: 320px;
	height: 370px;
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
   
   #l2
   {
	  font-size: 17px;
	  color: navy;
	  margin-right: 76px;
   }
   
   #l3
   {
	  font-size: 17px;
	  color: navy;
	  margin-right: 70px;
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
     padding-left: 10px;
   }
   
    input[type="email"]::placeholder 
    {         
      text-align: left;
      color: navy;
    }

    input[type="password"]::placeholder 
    {       
      text-align: left;
       color: navy;
    }
    
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

    a
    {
      color: navy;
    }
    
    a:hover
    {
       text-decoration: none;
       border: 1px solid deeppink;
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
     
     <div id="d2">
     
        <div id="d2_1">
        
          <label id="l1"> Student Login </label>
          
          <form action="StudentLogin">
          
          <div id="d2_2">
          
             <label id="l2"> Enter Your Email Id : </label> <br> <br>
             <input type="email" name="email" placeholder="Email Id">
             
             <br> <br>
             
             <label id="l3"> Enter Your Password : </label> <br> <br>
             <input type="password" name="upass" placeholder="Password">
             
             <br> <br>
             <button>LOGIN</button>
             
             <br> <br>
             <a href="StudentList.jsp"> Students List </a>
          
          </div>
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