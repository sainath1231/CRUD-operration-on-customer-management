package com.customer.web.jdbc;

import java.io.IOException;
import java.util.List;

import javax.sql.DataSource;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/StudentControllerServlet")
public class StudentControllerServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StudentDbUtil studentDbUtil;

	@Resource(name = "jdbc/web_student_tracker")
	private DataSource dataSource;

	public void init() throws ServletException {

		// create our student db util.. and pass in the coon pool/datasources
		try {
			studentDbUtil = new StudentDbUtil(dataSource);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// list the Student.. in mvc fashion
		try {
			// read the "command" parameter
			String theCommand = req.getParameter("command");
			// if the command is missing then deafult to listing student
			if (theCommand == null) {
				theCommand = "LIST";
			}
			// route to the appropriate method
			switch (theCommand) {
			case "LIST":
				listStudents(req, resp);
				break;
				
			case "ADD":
				addStudent(req, resp);
				break;
			case "LOAD":
				loadStudent(req,resp);
				break;
				
			case "UPDATE":
				updateStudent(req,resp);
				break;
				
			case "DELETE":
				deleteStudent(req, resp);
						break;
			default:
				listStudents(req, resp);
			}

		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
	
	private void updateStudent(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//read student info from data
		int id=Integer.parseInt(req.getParameter("studentid"));
		String firstName= req.getParameter("firstName");
		String lastName= req.getParameter("lastName");
		String email= req.getParameter("email");
		String street= req.getParameter("street");
		String address= req.getParameter("address");
		String city= req.getParameter("city");
		int phone= Integer.parseInt(req.getParameter("phone"));
		
		// create a new student object
		Student theStudent= new Student(id,firstName, lastName, email, street, address, city, phone);
		
		//perform update student on database
		studentDbUtil.updateStudent(theStudent);
		
		//send back to main page (theStudent)
		listStudents(req, resp);
	}
	private void loadStudent(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//read student id from form data
		String theStudentid= req.getParameter("studentid");
		
		//get student from database(db util)
		Student theStudent = studentDbUtil.getStudent(theStudentid);
		
		//place student in the request attribute
		req.setAttribute("THE_STUDENT", theStudent);
		
		//send to jsp page : update-student-form.jsp
		RequestDispatcher rd= req.getRequestDispatcher("/update-student-form.jsp");
		rd.forward(req, resp);
	}
	private void addStudent(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// read student info from data
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String email = req.getParameter("email");
		String street= req.getParameter("street");
		String address= req.getParameter("address");
		String city= req.getParameter("city");
		int phone= Integer.parseInt(req.getParameter("phone"));
		// create a new student object
		Student theStudent = new Student(firstName, lastName, email, street, address, city, phone);

		// add the student to the database
		studentDbUtil.addStudent(theStudent);

		// send back to main page (theStudent)
		listStudents(req, resp);
	}
	private void listStudents(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		// get student from db util
		List<Student> students = studentDbUtil.getStudents();

		// add student to the request
		req.setAttribute("STUDENT_LIST", students);

		// send to JSP page(view)
		RequestDispatcher ds = req.getRequestDispatcher("/list-student.jsp");
		ds.forward(req, resp);
	}
		private void deleteStudent(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//read student info from data
		String theStudentid= req.getParameter("studentid");
		// delete student from data
		studentDbUtil.deleteStudent(theStudentid);
	
		 //send back to main page (theStudent)
		listStudents(req, resp);
	}
		

}
