<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attendance Page</title>
<link rel="stylesheet" href="Home.css">

<style type="text/css">

body
{
    text-align:center;
    color: white;
}

h1
{
    color: orange;
}


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
    margin-top: 40px;
    display: flex;
    justify-content: center;
    font-size: 22px;
    color: white;
    border-bottom: 2px solid white;
  }
  
#p
{
  margin: auto;
  height: 25px;
  width: 50%;
  text-align: center;
  margin-top: 20px;
  font-size: 20px;
  border: 2px solid black;
  background-color: orange;
  color: black;
} 

#p:hover
{
    background-color: skyblue;
    color: blue;
    border: 2px solid blue;
} 

b
{
   margin-left: 30px;
}

#p1
{
   margin: auto;
   height: 30px;
   width: 50%;
   border: 1px solid black;
   background-color: black;
   color: white;
   text-align: center;
   font-size: 18px;
   margin-top: 20px;
}

#p2
{
   background-color: green;
   
}

#p3
{
   background-color: navy;
}

#p3:hover
{
   background-color: blue;
}

#button1
{
   margin-top: 20px;
   width: 576px;
   height: 40px;
   background-color: orange;
   border: 2px solid orange;
   color: blue;
   font-size: 15px;
}

#button1:hover
{
   background-color: green;
   border: 2px solid green;
   color: white;
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
        String sem =(String)session.getAttribute("Sem");
        String Class =(String)session.getAttribute("Class");
        String Date = (String)session.getAttribute("Date");
        int sid[] = (int[])session.getAttribute("Sid");
        String did = (String)session.getAttribute("did");
        String fname[] = (String[])session.getAttribute("Fname");
        String lname[] = (String[])session.getAttribute("Lname");
        
        int c = Integer.parseInt(Class);
        if(c == 12)
        {
        	System.out.print("\nIf : "+Class);
        	Class = "1&2";
        }
        else if(c == 23)
        {
        	System.out.print("\nElse If :"+Class);
        	Class = "2&3";
        }
        else if(c == 34)
        {
        	System.out.print("\nElse If : "+Class);
        	Class = "3&4";
        }
        else
        {
        	System.out.print("\nElse : "+Class);
        	//it remains the same
        }
        	
        
     %>
     
      <% 
        String Tfname = (String)session.getAttribute("FirstName");
        Tfname = Tfname.toUpperCase();
        String Tlname = (String)session.getAttribute("LastName");
        Tlname = Tlname.toUpperCase();
        String dept = (String)session.getAttribute("Dept");
        dept = dept.toUpperCase();
     %> 
     
     <div id="b2">
         Prof.  <%= Tfname %> <%= Tlname %> 
     </div>

     <div id="b3">
         DEPARTMENT OF <%= dept %>
     </div>
     
         <form action="AttendanceMain">
    
     <div id="p" > <b>Semester : <%= sem %> </b>  <b>Class : <%= Class %></b> <b> Date : <%= Date %></b> </div>    
      
            <table id="p1">
            <tr id="p2">
             <td> Student ID </td>
             <td> Student Name </td>   
             <td> Present(Yes/No) </td> 
            </tr>
            <%
               int j=0;
               while(fname[j]!=null)
               {
            %>
             
             <tr id="p3"> 
                <td> <%= sid[j] %> </td> 
                <td> <%= fname[j] %> <%= lname[j] %> </td> 
                <td> <input type="checkbox"  name="present" value=<%= sid[j++] %>> </td> 
             </tr> 	 
              
            <%}%>
            </table>
          
            <div id="p4"> 
             <button id="button1">Submit</button>
             </div> 
             
             </form>
      
              <br> <br> <br>
              
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