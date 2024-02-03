package com.customer.web.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.sql.DataSource;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID=1L;
	
	//Define datasource/connection pool for Resource Injection
	@Resource(name = "jdbc/web_student_tracker")
	private DataSource dataSource;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//step 1 : Set up the printwriter
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/plain");
		
		// Step 2 : Get a connection to the database
		Connection myConn = null;
		Statement myStmt=null;
		ResultSet myRs= null;
		try {
			myConn= dataSource.getConnection();
			//step 3: Create a SQl 
			String sql = "selcet * from student";
			myStmt=myConn.createStatement();
			
			// step 4 : Execute SQL query
			myRs=myStmt.executeQuery(sql);
			
			//Step 5: Process the result Set
			while(myRs.next()) {
				String email = myRs.getString("email");
				out.println(email);
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
