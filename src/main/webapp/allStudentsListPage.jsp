<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>
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

#p4
{
    display: flex;
    justify-content: center;
}


#button1
{
   margin-top: 20px;
   width: 286px;
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

#button2
{
   margin-top: 20px;
   margin-left: 5px;
   width: 286px;
   height: 40px;
   background-color: orange;
   border: 2px solid orange;
   color: blue;
   font-size: 15px;
}

#button2:hover
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
        int sid[] = (int[])session.getAttribute("Sid");
        String fname[] = (String[])session.getAttribute("Fname");
        String lname[] = (String[])session.getAttribute("Lname");
        String email[] = (String[])session.getAttribute("Email");
        String pass[] = (String[])session.getAttribute("Pass");
        String Dept = (String)session.getAttribute("Department");
        String DeptId = (String)session.getAttribute("DepartmentId");
        System.out.println(sem);
        System.out.println(sid);
        System.out.println(fname);
        System.out.println(lname);
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
     
     
     <div id="p" >  <b> Department : <%= dept %> </b> <b> Semester : <%= sem %> </b> </div>    
      
            <table id="p1">
            <tr id="p2">
             <td> Student ID </td>
             <td> Student Name </td>
             <td> Email Id </td>   
             <td> Password </td> 
             <td> Department Id </td> 
            </tr>
            <%
               int j=0;
               while(fname[j]!=null)
               {
            %>
             
             <tr id="p3"> 
                <td> <%= sid[j] %> </td> 
                <td> <%= fname[j] %> <%= lname[j] %> </td> 
                <td> <%= email[j] %> </td> 
                <td> <%= pass[j++] %> </td>
                <td> <%= DeptId %> </td>
             </tr> 	 
              
            <%}%>
            </table>
          
            <div id="p4"> 
              <a href="attendance.jsp"><button id="button1">Back</button></a>
              <a href="index.jsp"><button id="button2">Home</button></a>
             </div>
             
      
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