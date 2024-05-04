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


public class AttendanceHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public AttendanceHistory() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();	
		int sid = (Integer) session.getAttribute("StudentSid");
		
		 Connection connect = null;
		 PreparedStatement ps = null;
		 ResultSet rs = null;
		 int sum = 0;
		 int totalClass = 0;
		
		try
		{
		      connect = JdbcUtil.getConnection();
		       
		      String query = "SELECT * FROM attendance WHERE sid = ?";
	    	  ps = connect.prepareStatement(query);
	    	  
	    	  ps.setInt(1,sid);
	    	  
	    	  rs = ps.executeQuery();
		           
		           if(rs.next())
		           {
		        	   System.out.print("\n Successfully find total attendance...\n"); 
		        	   sum+= rs.getInt(4);
		        	   totalClass++;
		        	   sum+= rs.getInt(5);
		        	   totalClass++;
		        	   sum+= rs.getInt(6);
		        	   totalClass++;
		        	   sum+= rs.getInt(7);
		        	   totalClass++;
		           }
		           else
		           {
		        	   System.out.print("\nUnable to find total attendance...\n");
		        	   //response.sendRedirect("/AMS/Student1.jsp");
		           }
		           
		           session.setAttribute("TotalAttendance",sum);
		           session.setAttribute("TotalClass",totalClass);
		           response.sendRedirect("/AMS/AttendancePercentage.jsp");
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
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}	
	}

}
