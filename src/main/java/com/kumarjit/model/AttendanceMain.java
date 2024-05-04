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


public class AttendanceMain extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    
    public AttendanceMain() 
    {
        super();   
        System.out.print("\nHello from AttendanceMain Page.........\n");
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String srr[] = request.getParameterValues("present");
		HttpSession session = request.getSession();
		String sem =(String)session.getAttribute("Sem");
        String Class =(String)session.getAttribute("Class");
        String Date = (String)session.getAttribute("Date");
        String did = (String)session.getAttribute("did");
        String tid = (String)session.getAttribute("tid");
        
        int flag = 0;
        int flag1 = 0;
        int flag2 = 0;
        
		for(int i=0; i<srr.length; i++)
		{
	       System.out.print(srr[i]+"\n");
		}
		
	     Connection connect = null;
		 PreparedStatement ps = null;
		 PreparedStatement ps0 = null;
		 PreparedStatement ps1 = null;
		 PreparedStatement ps2 = null;
		 ResultSet rs0 = null;
		try
		{
			  connect = JdbcUtil.getConnection();
			 
			  String query0 = "SELECT * FROM studentattendance WHERE "
			  		+ "TADate = ? and did = ? and semester = ? and class1 = ? and class2 = ? and class3 = ? and class4 = ?";
	    	  ps0 = connect.prepareStatement(query0);
	    	  
	    	  ps0.setString(1,Date);
	    	  ps0.setString(2,did);
	    	  ps0.setString(3,sem);
	    	  int c0 = Integer.parseInt(Class);
	    	  if(c0 >= 12)
	    	  {
	    		  if(c0==12)
	    		  {
	    			  ps0.setInt(4,1);
	    			  ps0.setInt(5,1);
	    			  ps0.setInt(6,0);
	    			  ps0.setInt(7,0); 
	    		  }
	    		  else if(c0==23)
	    		  {
	    			  ps0.setInt(4,0);
	    			  ps0.setInt(5,1);
	    			  ps0.setInt(6,1);
	    			  ps0.setInt(7,0);
	    		  }
	    		  else if(c0==34)
	    		  {
	    			  ps0.setInt(4,0);
	    			  ps0.setInt(5,0);
	    			  ps0.setInt(6,1);
	    			  ps0.setInt(7,1);
	    		  }
	    	  }
	    	  else
	    	  {
	    		  if(c0==1)
	    		  {
	    			  ps0.setInt(4,1);
	    			  ps0.setInt(5,0);
	    			  ps0.setInt(6,0);
	    			  ps0.setInt(7,0);
	    		  }
	    		  else if(c0==2)
	    		  {
	    			  ps0.setInt(4,0);
	    			  ps0.setInt(5,1);
	    			  ps0.setInt(6,0);
	    			  ps0.setInt(7,0);
	    		  }
	    		  else if(c0==3)
	    		  {
	    			  ps0.setInt(4,0);
	    			  ps0.setInt(5,0);
	    			  ps0.setInt(6,1);
	    			  ps0.setInt(7,0);
	    		  }
	    		  else if(c0==4)
	    		  {
	    			  ps0.setInt(4,0);
	    			  ps0.setInt(5,0);
	    			  ps0.setInt(6,0);
	    			  ps0.setInt(7,1);
	    		  }
	    	  }
	    	 
	    	  rs0 = ps0.executeQuery();
	    	  
	    if(rs0.next())
        {	        	 
	    	  System.out.print("\nThis Attendance Details Database Already Have....\n");
			  response.sendRedirect("/AMS/AlreadyHave.jsp");   
        }
	    else
	    {
			for(int i=0; i<srr.length; i++)
			{
		      System.out.print("\n"+srr[i]);
		      ps = null;
		       
		      String query = "INSERT INTO studentattendance(TADate,Sid,did,semester,class1,class2,class3,class4)"
		      		+ "VALUES (?,?,?,?,?,?,?,?)";
		      ps = connect.prepareStatement(query);
	    	  ps.setString(1,Date);
	    	  int sid = Integer.parseInt(srr[i]);
	    	  ps.setInt(2,sid);
	    	  ps.setString(3,did);
	    	  ps.setString(4,sem);
	    	  int c = Integer.parseInt(Class);
	    	  if(c >= 12)
	    	  {
	    		  if(c==12)
	    		  {
	    			  ps.setInt(5,1);
	    			  ps.setInt(6,1);
	    			  ps.setInt(7,0);
	    			  ps.setInt(8,0); 
	    		  }
	    		  else if(c==23)
	    		  {
	    			  ps.setInt(5,0);
	    			  ps.setInt(6,1);
	    			  ps.setInt(7,1);
	    			  ps.setInt(8,0);
	    		  }
	    		  else if(c==34)
	    		  {
	    			  ps.setInt(5,0);
	    			  ps.setInt(6,0);
	    			  ps.setInt(7,1);
	    			  ps.setInt(8,1);
	    		  }
	    	  }
	    	  else
	    	  {
	    		  if(c==1)
	    		  {
	    			  ps.setInt(5,1);
	    			  ps.setInt(6,0);
	    			  ps.setInt(7,0);
	    			  ps.setInt(8,0);
	    		  }
	    		  else if(c==2)
	    		  {
	    			  ps.setInt(5,0);
	    			  ps.setInt(6,1);
	    			  ps.setInt(7,0);
	    			  ps.setInt(8,0);
	    		  }
	    		  else if(c==3)
	    		  {
	    			  ps.setInt(5,0);
	    			  ps.setInt(6,0);
	    			  ps.setInt(7,1);
	    			  ps.setInt(8,0);
	    		  }
	    		  else if(c==4)
	    		  {
	    			  ps.setInt(5,0);
	    			  ps.setInt(6,0);
	    			  ps.setInt(7,0);
	    			  ps.setInt(8,1);
	    		  }
	    	  }
	    	  
	    	  flag =  ps.executeUpdate();

	    	   
		    }
			
			
		      System.out.print("\nTeacher attendance.....\n");
		  
		       
		      String query1 = "INSERT INTO teacherattendance(TADate,Tid,class1,class2,class3,class4)"
		      		+ "VALUES (?,?,?,?,?,?)";
		      ps1 = connect.prepareStatement(query1);
	    	  ps1.setString(1,Date);
	    	  ps1.setString(2,tid);
	    	  int c1 = Integer.parseInt(Class);
	    	  if(c1 >= 12)
	    	  {
	    		  if(c1==12)
	    		  {
	    			  ps1.setInt(3,1);
	    			  ps1.setInt(4,1);
	    			  ps1.setInt(5,0);
	    			  ps1.setInt(6,0);
	    		  }
	    		  else if(c1==23)
	    		  {
	    			  ps1.setInt(3,0);
	    			  ps1.setInt(4,1);
	    			  ps1.setInt(5,1);
	    			  ps1.setInt(6,0); 
	    		  }
	    		  else
	    		  {
	    			  ps1.setInt(3,0);
	    			  ps1.setInt(4,0);
	    			  ps1.setInt(5,1);
	    			  ps1.setInt(6,1);
	    		  }
	    	  }
	    	  else
	    	  {
	    		  if(c1==1)
	    		  {
	    			  ps1.setInt(3,1);
	    			  ps1.setInt(4,0);
	    			  ps1.setInt(5,0);
	    			  ps1.setInt(6,0);
	    		  }
	    		  
	    		  else if(c1==2)
	    		  {
	    			  ps1.setInt(3,0);
	    			  ps1.setInt(4,1);
	    			  ps1.setInt(5,0);
	    			  ps1.setInt(6,0);
	    		  }
	    		  
	    		  else if(c1==3)
	    		  {
	    			  ps1.setInt(3,0);
	    			  ps1.setInt(4,0);
	    			  ps1.setInt(5,1);
	    			  ps1.setInt(6,0);
	    		  }
	    		  else
	    		  {
	    			  ps1.setInt(3,0);
	    			  ps1.setInt(4,0);
	    			  ps1.setInt(5,0);
	    			  ps1.setInt(6,1);
	    		  }
	    	  }
	    	  
	    	  flag1 =  ps1.executeUpdate();
	    	 
		       
		      String query2 = "INSERT INTO class(TADate,did,semester,class1,class2,class3,class4)"
		      		+ "VALUES (?,?,?,?,?,?,?)";
		      ps2 = connect.prepareStatement(query2);
	    	  ps2.setString(1,Date);
	    	  ps2.setString(2,did);
	    	  ps2.setString(3,sem);
	    	  int c2 = Integer.parseInt(Class);
	    	  if(c2 >= 12)
	    	  {
	    	    if(c2==12)
    		    {
    			  ps2.setInt(4,1);
    			  ps2.setInt(5,1);
    			  ps2.setInt(6,0);
    			  ps2.setInt(7,0);
    		    }
    		    else if(c2==23)
    		    {
      			  ps2.setInt(4,0);
      			  ps2.setInt(5,1);
      			  ps2.setInt(6,1);
      			  ps2.setInt(7,0); 
    		    }
    		    else
    		    {
      			  ps2.setInt(4,0);
      			  ps2.setInt(5,0);
      			  ps2.setInt(6,1);
      			  ps2.setInt(7,1);
    		    }
    	      }
    	      else
    	      {
    		    if(c2==1)
    		    {
      			  ps2.setInt(4,1);
      			  ps2.setInt(5,0);
      			  ps2.setInt(6,0);
      			  ps2.setInt(7,0);
    		    }
    		    else if(c2==2)
    		    {
      			  ps2.setInt(4,0);
      			  ps2.setInt(5,1);
      			  ps2.setInt(6,0);
      			  ps2.setInt(7,0);
    		    }
    		    else if(c2==3)
    		    {
      			  ps2.setInt(4,0);
      			  ps2.setInt(5,0);
      			  ps2.setInt(6,1);
      			  ps2.setInt(7,0);
    		    }
    		    else
    		    {
      			  ps2.setInt(4,0);
      			  ps2.setInt(5,0);
      			  ps2.setInt(6,0);
      			  ps2.setInt(7,1);
    		    }
    	      }  
	    	  
	    	  flag2 =  ps2.executeUpdate();
	    	  
    		  if(flag==0 || flag1==0 || flag2==0)
    		  {
    			  System.out.print("\nUnable to insert teacher's and student's  attendance information....\n");
    			  response.sendRedirect("/AMS/Failure.jsp");
    		  }
    		  else
    		  {
    			  System.out.print("\nteacher's and student's  attendance  information successfully inserted....\n");
    			  response.sendRedirect("/AMS/Success.jsp");   
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
			/*try
			{
	           //JdbcUtil.CloseConnection(connect,ps);
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}*/
		}
	}

}
