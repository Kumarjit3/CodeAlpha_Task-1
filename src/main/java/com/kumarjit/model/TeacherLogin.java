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


public class TeacherLogin extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    
    public TeacherLogin() {
        super();
        System.out.print("\nin teacher login servlet.....\n ");   
    }

	
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email = request.getParameter("email");
		String pass = request.getParameter("upass");
		String key = request.getParameter("key");
		String did = null;
		String Tid = null;
		System.out.print("\n"+email);
		
		 Connection connect = null;
		 PreparedStatement ps = null;
		 ResultSet rs = null;
		 PreparedStatement ps1 = null;
         ResultSet rs1 = null;
		try
		{
		      connect = JdbcUtil.getConnection();
		       
		      String query = "SELECT * FROM teacher WHERE email = ? and password = ? and privatekey = ?";
	    	  ps = connect.prepareStatement(query);
	    	  
	    	  ps.setString(1,email);
	    	  ps.setString(2,pass);
	    	  ps.setString(3,key);
	    	  
	    	  rs = ps.executeQuery();
		           
		           if(rs.next())
		           {
		        	  Tid = rs.getString(2); 
		        	  String Fname = rs.getString(3);
			          String Lname = rs.getString(4);
			          String dept = null;
			       
			          did = rs.getString(8);
			          
			          System.out.print("\n"+did);
			          
			          String query1 = "SELECT * FROM department WHERE did = ?";
			    	  ps1 = connect.prepareStatement(query1);
			    	  ps1.setString(1,did);
			    	  rs1 = ps1.executeQuery();
			    	  
			          if(rs1.next())
			          {
			        	  System.out.print("\n"+pass);
			        	  dept = rs1.getString(2); 
			        	  System.out.print("\n"+dept);
			          }
			          else
			          {
	                      dept = "Unknown";
			          }
		        	    HttpSession session = request.getSession();
		        	    session.setAttribute("tid",Tid);
			            session.setAttribute("FirstName",Fname);
			       	    session.setAttribute("LastName",Lname);
			       	    session.setAttribute("Dept",dept);
			       	    session.setAttribute("Did",did);
			       	  
		        	    System.out.print("\nData inserted successfully\n");
		        	    response.sendRedirect("/AMS/Teacher1.jsp");
		        	    rs1.close();
		 	            ps1.close();
		        	    
		           }
		           else
		           {
		              System.out.print("\nUnable to insert the data\n");
			     	  response.sendRedirect("/AMS/TeacherLoginFailed.html");    	
		           } 
		        
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
