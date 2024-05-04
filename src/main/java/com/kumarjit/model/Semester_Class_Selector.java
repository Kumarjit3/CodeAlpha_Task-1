package com.kumarjit.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Semester_Class_Selector extends HttpServlet 
{
	
	private static final long serialVersionUID = 1L;
    
    public Semester_Class_Selector() 
    {
        super();
        System.out.print("\nHello from semester & class selector........\n");
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String semester = request.getParameter("semester");
		String Class = request.getParameter("Aclass");
		String Date = request.getParameter("date");
		HttpSession session = request.getSession(); 
		String dept = (String)session.getAttribute("Dept");
		String DeptId = null;
		
		int Roll[] = new int[50];
		String FName[] = new String[50];
		String LName[] = new String[50];
		
		
		
		 Connection connect = null;
		 PreparedStatement ps = null;
		 ResultSet rs = null;
		 PreparedStatement ps1 = null;
		 ResultSet rs1 = null;
		 
		 try
		 {
			  connect = JdbcUtil.getConnection();
			 
			  String query = "SELECT * FROM department WHERE dname = ?";
	    	  ps = connect.prepareStatement(query);
	    	  
	    	  ps.setString(1,dept);
	    	  System.out.print("\ndept : "+dept);
	    	
	    	  rs = ps.executeQuery();
	    	  
	    	  while(rs.next())
		      {	   
		       	 DeptId = rs.getString(1);
		       	System.out.print("\nDeptId : "+DeptId);
		      }
		      
	    	  session.setAttribute("DeptId",DeptId);
	    	  
	    	  
		      String query1 = "SELECT * FROM student WHERE semester = ? and did = ?";
	    	  ps1 = connect.prepareStatement(query1);
	    	  
	    	  ps1.setString(1,semester);
	    	  ps1.setString(2,DeptId);
	    	
	    	  rs1 = ps1.executeQuery();
	    	  int i=0;
	    	  
	    	 while(rs1.next())
	    	 {	  
	        	 int roll = rs1.getInt(2); 
	        	 String Fname = rs1.getString(3);
		         String Lname = rs1.getString(4);
		         System.out.print("\n"+roll);
		         System.out.print("\n"+Fname);
		         System.out.print("\n"+Lname);
		         Roll[i]=roll;
		         FName[i]=Fname;
		         LName[i++]=Lname;
	    	 }
	           
	    	  
	    	  System.out.print("\n"+Roll[0]);
	    	  System.out.print("\n"+FName[0]);
	    	  System.out.print("\n"+LName[0]);
	    	  		
	          session.setAttribute("Sem",semester);
	          session.setAttribute("Class",Class);
	          session.setAttribute("Date",Date);        
	          session.setAttribute("Sid",Roll);
	          session.setAttribute("did",DeptId);
	          session.setAttribute("Fname",FName);
	          session.setAttribute("Lname",LName);
	          
	          System.out.print("\nFrom sester_Classs_selector to attendance...\n");
	  	    response.sendRedirect("/AMS/attendance1.jsp");
	    	  
	    	  
		 }
		 catch(SQLException e)
		 {
			e.printStackTrace();
	     }
		 catch(Exception e)
		 {
			e.printStackTrace();
    	 }
		 finally
		 {
			//Close the resources			
			try
			{
	           JdbcUtil.CloseConnection(connect,ps);
	           rs.close();
	           rs1.close();
	           ps1.close();
	        }
		  	catch(SQLException e)
			{
		   	  e.printStackTrace();
			}
		 }
	}
}
