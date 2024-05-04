package com.kumarjit.model;

import java.sql.*;

public class JdbcUtil 
{
    static
    {
    	try
    	{
    		// Load and Register the Driver
    		Class.forName("com.mysql.cj.jdbc.Driver");
    	}
    	catch(ClassNotFoundException e)
    	{
    		e.printStackTrace();
    	}
    }
    
    public static Connection getConnection() throws SQLException
    {
    	//Establish the connection
	    String url = "jdbc:mysql://localhost:3306/codealpha";
	    String user = "root";
	    String password = "MySQL-123";
	    return DriverManager.getConnection(url, user, password);
    }
    
    public static void CloseConnection(Connection connect, Statement statement) throws SQLException
    {
    	 statement.close();
         connect.close();
    }
}
