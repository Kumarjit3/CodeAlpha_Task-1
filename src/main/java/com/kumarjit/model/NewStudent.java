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


public class NewStudent extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    public NewStudent() 
    {
        super();
        System.out.print("\nHello from New Student servlet.....\n");
    }

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 String Fname = request.getParameter("fname");
		 String Lname = request.getParameter("lname");
		 String Email = request.getParameter("email");
		 String Sem = request.getParameter("semester");
		 
		 HttpSession session = request.getSession();		
		 String did = (String)session.getAttribute("Did");
		 
		 Connection connect = null;
		 PreparedStatement ps = null;
		 ResultSet rs = null;
		 PreparedStatement ps1 = null;
         ResultSet rs1 = null;
		 PreparedStatement ps2 = null;
         PreparedStatement ps3 = null;
         ResultSet rs3 = null;
      
		try
		{
			
			  System.out.print("\nin try....\n");
				
		      connect = JdbcUtil.getConnection();
		       
		      String query = "SELECT * FROM student WHERE fname = ? and lname = ? and email = ? and semester = ? and did = ? ";
	    	  ps = connect.prepareStatement(query);
	    	  
	    	  ps.setString(1,Fname);
	    	  ps.setString(2,Lname);
	    	  ps.setString(3,Email);
	    	  ps.setString(4,Sem);
	    	  ps.setString(5,did);
	    	  
	    	  rs = ps.executeQuery();
	    	  
	    	  if(rs.next())
	    	  {
	    		  System.out.print("\nAlready we have the student....\n");
	    		  response.sendRedirect("/AMS/ExistingStudent.jsp");
	    	  }
	    	  else
	    	  {
	    		  int id = 0;
	    		  int sid = 0;
	    		  String password = null;
	    	
	    		  System.out.print("\nIn max(sid) query....\n");
	    		  
	    		  String query1 = "select * from student where did = ? and semester = ? and sid = (select Max(sid) from student where semester = ? and did = ?)";
	    		  ps1 = connect.prepareStatement(query1);
	    		  
	    		  ps1.setString(1,did);
	    		  ps1.setString(2,Sem);
		    	  ps1.setString(3,Sem);
		    	  ps1.setString(4,did);
		    	  
		    	  rs1 = ps1.executeQuery();
		    	  
		    	  if(rs1.next())
		    	  {
		    		 System.out.print("\nIn max(sid) query success....\n");
		    		 
		    		 String query3 = "select * from student where id = (select Max(id) from student)";
		    		 ps3 = connect.prepareStatement(query3);
		    		 rs3 = ps3.executeQuery();
		    		 
		    		 if(rs3.next())
		    		 {
		    			 id = rs3.getInt(1); 
		    		 }
		    		 
		    		 sid = rs1.getInt(2);
		    		 did = rs1.getString(7);
		    		 
		    		 sid++;
		    		 id++;
		    		 Fname = Fname.toLowerCase();
		    		 password = (Fname+id);
		    		 
		    		  String query2 = "INSERT INTO student(sid,fname,lname,email,password,did,semester) "
			    		  		+ "VALUES (?,?,?,?,?,?,?)";
		    		  ps2 = connect.prepareStatement(query2);
			    	  ps2.setInt(1,sid);
			    	  ps2.setString(2,Fname);
			    	  ps2.setString(3,Lname);
			    	  ps2.setString(4,Email);
			    	  ps2.setString(5,password);
			    	  ps2.setString(6,did);
			    	  ps2.setString(7,Sem);
			    	  
			    	  int flag =  ps2.executeUpdate();
			    	  
		    		  if(flag==0)
		    		  {
		    			  System.out.print("\nUnable to insert new student's information....\n");
		    		  }
		    		  else
		    		  {
		    			  System.out.print("\nNew student's information successfully inserted....\n");
		    			  		    			    
				       	    session.setAttribute("Did",did);
				       	    session.setAttribute("Password",password);
				       	    session.setAttribute("Sid",sid);
		    			    
		    			    response.sendRedirect("/AMS/NewStudentAdded.jsp");
		    		  }
		    		  rs1.close();
		    		  ps1.close();
		    		  ps2.close();
		    		  rs3.close();
		    		  ps3.close();
		    	  }
		    	  else
		    	  {
		    		  System.out.print("\nMax(sid) query failed.....\n");
		    	  }
		    	  
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
