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


public class StudentLogin extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
  
    public StudentLogin() 
    {
        super();
        System.out.print("\nhello from servlet StudentLogin.....\n");
    }

	
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email = request.getParameter("email");
		String pass = request.getParameter("upass");
		
		 Connection connect = null;
		 PreparedStatement ps = null;
		 ResultSet rs = null;
		 PreparedStatement ps1 = null;
		 ResultSet rs1 = null;
		try
		{
		      connect = JdbcUtil.getConnection();
		       
		      String query = "SELECT * FROM student WHERE email = ? and password = ?";
	    	  ps = connect.prepareStatement(query);
	    	  
	    	  ps.setString(1,email);
	    	  ps.setString(2,pass);
	    	  
	    	  rs = ps.executeQuery();
		           
		           if(rs.next())
		           {
		        	  int Sid = rs.getInt(2);
		        	  String Fname = rs.getString(3);
		        	  String Lname = rs.getString(4);
		        	  String Did = rs.getString(7);
		        	  String Sem = rs.getString(8);
		        	  String Dept = null;
		        	  
		        	  String query1 = "SELECT * FROM department WHERE did = ?";
			    	  ps1 = connect.prepareStatement(query1);
			    	  ps1.setString(1,Did);
			    	  rs1 = ps1.executeQuery();
			    	  
			          if(rs1.next())
			          {
			        	  Dept = rs1.getString(2); 
			        	  System.out.print("\n"+Dept);
			          }
			          else
			          {
	                      Dept = "Unknown";
			          }
		        	  
		        	  HttpSession session = request.getSession();		
		        	  session.setAttribute("StudentFirstName",Fname);
		       		  session.setAttribute("StudentLastName",Lname);
		       		  session.setAttribute("StudentDept",Dept);
		       		  session.setAttribute("StudentEmail",email);
		       		  session.setAttribute("StudentDid",Did);
		       		  session.setAttribute("StudentSid",Sid);
		       		  session.setAttribute("StudentSem",Sem);
		       		  session.setAttribute("StudentPass",pass);
		        	  System.out.print("\nData inserted successfully\n");
		        	  response.sendRedirect("/AMS/Student1.jsp");
		           }
		           else
		           {
		              System.out.print("\nUnable to insert the data\n");
			     	  response.sendRedirect("/AMS/StudentLoginFailed.html");
		            	
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
