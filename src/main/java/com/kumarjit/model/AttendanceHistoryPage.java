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


public class AttendanceHistoryPage extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
  
    public AttendanceHistoryPage() 
    {
        super();
        System.out.print("\nHello from AttendanceHistoryPage Servlet........\n");
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String semester = request.getParameter("semester");
		HttpSession session = request.getSession(); 
		String dept = (String)session.getAttribute("Dept");
		
        String DeptId = null;
		int SRoll[] = new int[100];
		String FiName[] = new String[100];
		String LiName[] = new String[100];
		int totalClass = 0;
		int sumClass = 0;
		int attendClass[] = new int[100];
		int percentage[] = new int[100];
		
		
		
		 Connection connect = null;
		 PreparedStatement ps = null;
		 ResultSet rs = null;
		 PreparedStatement ps1 = null;
		 ResultSet rs1 = null;
		 PreparedStatement ps2 = null;
		 ResultSet rs2 = null;
		 PreparedStatement ps3 = null;
		 ResultSet rs3 = null;
		 
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
		     
	    	  
	    	  String query2 = "SELECT * FROM class where semester = ? and did = ?";
	    	  ps2 = connect.prepareStatement(query2);
	    	  
	    	  ps2.setString(1,semester);
	    	  ps2.setString(2,DeptId);
	    	
	    	  rs2 = ps2.executeQuery();
	    	  
	    	  while(rs2.next())
	    	  {
	    		  totalClass+=rs2.getInt(5);
	    		  totalClass+=rs2.getInt(6);
	    		  totalClass+=rs2.getInt(7);
	    		  totalClass+=rs2.getInt(8);
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
	        	 
	        	  String query3 = "SELECT * FROM studentattendance where Sid = ? and semester = ? and did = ?";
		    	  ps3 = connect.prepareStatement(query3);
		    	  
		    	  ps3.setInt(1,roll);
		    	  ps3.setString(2,semester);
		    	  ps3.setString(3,DeptId);
		    	
		    	  rs3 = ps3.executeQuery();
		    	  
		    	  while(rs3.next())
		    	  {
		    		  
		    		  sumClass+=rs3.getInt(6);
		    		  sumClass+=rs3.getInt(7);
		    		  sumClass+=rs3.getInt(8);
		    		  sumClass+=rs3.getInt(9);
		    	  }
		    	  
		    	  if(sumClass==0 || totalClass==0)
		    	  {
		    		  percentage[i] = 0;
		    		  attendClass[i] = 0;
		    	  }
		    	  else
		    	  { 
		    	   percentage[i] = 100*sumClass/totalClass;
		    	   attendClass[i] = sumClass;
		    	  }
		    	   sumClass = 0;
	        	   String Fname = rs1.getString(3);
		           String Lname = rs1.getString(4);
		           System.out.print("\n"+roll);
		           System.out.print("\n"+Fname);
		           System.out.print("\n"+Lname);
		           SRoll[i]=roll;
		           FiName[i]=Fname;
		           LiName[i++]=Lname;
	    	 }
	    	  		
	          session.setAttribute("S_emester",semester);      
	          session.setAttribute("srr",SRoll);
	          session.setAttribute("DeptId",DeptId);
	          session.setAttribute("Frname",FiName);
	          session.setAttribute("Lrname",LiName);
	          session.setAttribute("TotalClass",totalClass);
	          session.setAttribute("AttendClass",attendClass);
	          session.setAttribute("Percentage",percentage);
	          
	          System.out.print("\nFrom AttendanceHistoryPage to attendance...\n");
	  	      response.sendRedirect("/AMS/AttendanceHistoryPage.jsp");
	    	  	  
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
