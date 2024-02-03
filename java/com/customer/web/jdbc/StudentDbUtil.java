package com.customer.web.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class StudentDbUtil {
	private DataSource dataSource;

	public StudentDbUtil(DataSource theDataSource) {
		dataSource = theDataSource;
	}

	public Student getStudent(String theStudentid) throws Exception {
		Student theStudent = null;
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		int studentid;

		try {
			// covert student id to int
			studentid = Integer.parseInt(theStudentid);

			// get connection to database
			myConn = dataSource.getConnection();

			// create sql to get select student
			String sql = "select * from student where id=?";

			// create prepared statement
			myStmt = myConn.prepareStatement(sql);

			// set params
			myStmt.setInt(1, studentid);

			// excute statement
			myRs = myStmt.executeQuery();

			// retrieve data from result set row
			if (myRs.next()) {
				String firstName = myRs.getString("first_name");
				String lastName = myRs.getString("last_name");
				String email = myRs.getString("email");
				String street= myRs.getString("street");
				String address= myRs.getString("address");
				String city= myRs.getString("city");
				int phone= myRs.getInt("phone");
				
				
				
				// use the studentid during construction
				theStudent = new Student(studentid, firstName, lastName, email, street, address, city, phone);
			} else {
				throw new Exception("could not find student id:" + studentid);
			}
			return theStudent;

		} finally {
			// clean up JDBC object
			close(myConn, myStmt, myRs);
		}
	}

	public void updateStudent(Student theStudent) throws Exception {
		Connection myConn = null;
		PreparedStatement myStmt = null;

		try {
			// get db connection
			myConn = dataSource.getConnection();

			// create SQL update statement
			String sql = "update student set first_name=?,last_name=?, email=?, street=?, address=?, city=?, phone=? where id=?" ;

			// prepare statement
			myStmt = myConn.prepareStatement(sql);

			// set Param
			myStmt.setString(1, theStudent.getFirstName());
			myStmt.setString(2, theStudent.getLastName());
			myStmt.setString(3, theStudent.getEmail());
			myStmt.setString(4, theStudent.getStreet());
			myStmt.setString(5, theStudent.getAddress());
			myStmt.setString(6, theStudent.getCity());
			myStmt.setInt(7, theStudent.getPhone());
			myStmt.setInt(8, theStudent.getId());
			
			
			// excute SQL statement
			myStmt.execute();
		} finally {
			// clean up JDBC object
			close(myConn, myStmt, null);
		}
	}
	public List<Student> getStudents() throws Exception {
		List<Student> students = new ArrayList<>();
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;

		try {
			// get a connection
			myConn = dataSource.getConnection();

			// create sql statement
			String sql = "select * from student order by last_name";
			myStmt = myConn.createStatement();

			// execute qurey
			myRs = myStmt.executeQuery(sql);

			// process result set
			while (myRs.next()) {
				// retrieve data from result set row
				int id = myRs.getInt("id");
				String firstName = myRs.getString("first_name");
				String lastName = myRs.getString("last_name");
				String email = myRs.getString("email");
				String street= myRs.getString("street");
				String address= myRs.getString("address");
				String city= myRs.getString("city");
				int phone= myRs.getInt("phone");
				
				
				// create new student object
				Student tempStudent = new Student(id, firstName, lastName, email, street, address, city, phone);

				// add it to the list of students
				students.add(tempStudent);

			}
			return students;
		} finally {
			// close JDBC object
			close(myConn, myStmt, myRs);
		}
	}

	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
		try {
			if (myRs != null) {
				myRs.close();
			}
			if (myStmt != null) {
				myStmt.close();
			}
			if (myConn != null) {
				myConn.close(); // doesn't really close it... just puts back in connection pool
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void addStudent(Student theStudent) throws Exception {
	Connection myConn = null;
	PreparedStatement myStmt = null;

	try {
		// get db connection
		myConn = dataSource.getConnection();

		// create sql for insert
		//String sql = "insert into student (first_name,last_name,email) values(?,?,?)";
		String sql = "insert into student (first_name,last_name,email,street,address,city,phone) values(?,?,?,?,?,?,?)";
		myStmt = myConn.prepareStatement(sql);

		// set the param values for the student
		myStmt.setString(1, theStudent.getFirstName());
		myStmt.setString(2, theStudent.getLastName());
		myStmt.setString(3, theStudent.getEmail());
		myStmt.setString(4, theStudent.getStreet());
		myStmt.setString(5, theStudent.getAddress());
		myStmt.setString(6, theStudent.getCity());
		myStmt.setInt(7, theStudent.getPhone());
		// excute sql insert
		myStmt.execute();

	} finally {
		// clean up JDBC objects
		close(myConn, myStmt, null);
	}
	}

	public void deleteStudent(String theStudentid) throws SQLException {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		int studentid;
		try {
			studentid= Integer.parseInt(theStudentid);
			// get db connection
			myConn = dataSource.getConnection();

			// create SQL update statement
			String sql = "delete from student where id=?";

			// prepare statement
			myStmt = myConn.prepareStatement(sql);
			
			// set param
			myStmt.setInt(1,studentid);

			// excute SQL statement
			myStmt.execute();
		} finally {
			// clean up JDBC object
			close(myConn, myStmt, null);
		}		
	}
}


