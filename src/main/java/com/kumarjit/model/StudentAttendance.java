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


public class StudentAttendance extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
 
    public StudentAttendance() 
    {
        super();
        System.out.print("\nHello from StudentAttendance servlet......\n");
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();	
		int sid = (Integer) session.getAttribute("StudentSid");
		String did = (String)session.getAttribute("StudentDid");
		String sem = (String)session.getAttribute("StudentSem");
		
		System.out.print("\nSid : "+sid);
		
		 Connection connect = null;
		 PreparedStatement ps = null;
		 ResultSet rs = null;
		 PreparedStatement ps1 = null;
		 ResultSet rs1 = null;
		 int sum = 0;
		 int totalClass = 0;
		
		try
		{
		      connect = JdbcUtil.getConnection();
		       
		      String query = "SELECT * FROM class WHERE did = ? and semester = ?";
	    	  ps = connect.prepareStatement(query);
	    	  
	    	  ps.setString(1,did);
	    	  ps.setString(2,sem);
	    	  
	    	  rs = ps.executeQuery();
		           
               while(rs.next())
	           {
		           totalClass+= rs.getInt(5);
		           totalClass+= rs.getInt(6);
		       	   totalClass+= rs.getInt(7);
		       	   totalClass+= rs.getInt(8);
		       	   System.out.print("\n Successfully find total Class...  "+totalClass);
		       }
		       
                 
		        String query1 = "SELECT * FROM studentattendance WHERE did = ? and semester = ? and sid = ?";
			    ps1 = connect.prepareStatement(query1);
			    
			     ps1.setString(1,did);
			  	 ps1.setString(2,sem);
			     ps1.setInt(3,sid);
			    	
			     rs1 = ps1.executeQuery();
			     
				 while(rs1.next())
				 { 
				     sum+= rs1.getInt(6);
				     sum+= rs1.getInt(7);
				     sum+= rs1.getInt(8);
				     sum+= rs1.getInt(9);
				     System.out.print("\n Successfully find total attend Class... "+sum);
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
	           ps.close();
	           rs1.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}         	           
	}
}

