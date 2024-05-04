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


public class ListOfStudents extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
  
    public ListOfStudents() 
    {	
        super();
        System.out.print("\nHello from ListOfStudents servlet..........\n");
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String semester = request.getParameter("semester");
		String dept = request.getParameter("Dept");
		
		String DeptId = null;
		int Roll[] = new int[100];
		String Pass[] = new String[100];
		String Email[] = new String[100];
		String FName[] = new String[100];
		String LName[] = new String[100];
		
		
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
		         String email = rs1.getString(5);
		         String pass = rs1.getString(6);
		         System.out.print("\n"+roll);
		         System.out.print("\n"+Fname);
		         System.out.print("\n"+Lname);
		         System.out.print("\n"+email);
		         System.out.print("\n"+pass);
		         Roll[i]=roll;
		         FName[i]=Fname;
		         LName[i]=Lname;
		         Email[i] = email;
		         Pass[i++] = pass;
	    	 }
	           
	    	  
	    	  System.out.print("\n"+Roll[0]);
	    	  System.out.print("\n"+FName[0]);
	    	  System.out.print("\n"+LName[0]);
	    	  		
	    	  HttpSession session = request.getSession();    
	    	  session.setAttribute("Dept",dept);
	    	  session.setAttribute("Sem",semester);
	          session.setAttribute("Sid",Roll);
	          session.setAttribute("Fname",FName);
	          session.setAttribute("Lname",LName);
	          session.setAttribute("Email",Email);
	          session.setAttribute("Pass",Pass);
	          
	          
	          System.out.print("\nFrom ListOfStudents to StudentsListPage...\n");
	  	    response.sendRedirect("/AMS/StudentsListPage.jsp");
	    	  
	    	  
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
