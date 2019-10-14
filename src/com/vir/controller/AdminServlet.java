package com.vir.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vir.model.Student;
import com.vir.model.Trainer;


@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BuisnessService service = new BuisnessService();
	
       

    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("uname");
		String password = request.getParameter("password");
		String type = request.getParameter("type");
		RequestDispatcher requestDispatcher=null;
		
		if(username.equals("admin") && password.equals("admin"))
		{
			  HttpSession session = request.getSession();
			  session.setAttribute("data","admin");
			 requestDispatcher = request.getRequestDispatcher("/admin.jsp");
			requestDispatcher.forward(request, response);
			
		}else if(type.equals("student"))
		{
			if(service.validateStudent(username, password, type)!=null) //checks only username and type not the passwod
			{
				Student student = service.validateStudent(username, password, type);
				System.out.println(student);
				if(student.getPass().equals(password))
				{
					HttpSession session = request.getSession();
					session.setAttribute("data",student);
					request.setAttribute("data",student);
					 request.getRequestDispatcher("student.jsp").forward(request, response);
				}else {
					
					request.setAttribute("data","wrong pssword");
					request.getRequestDispatcher("/login.jsp").forward(request, response);
					
				}
				
			}
		}
			else if(type.equals("trainer"))
			{
				Trainer tr = service.validateTrainer(username, password, type);
				if(service.validateTrainer(username, password, type)!=null) 
				{
					//request.getRequestDispatcher("/trainerdashboard.jsp").forward(request, response);
					Trainer t=service.validateTrainer(username, password, type);
					String password1 = t.getPassword();
					
						
						HttpSession session = request.getSession();
						session.setAttribute("data",t);
						request.setAttribute("data",t);
						System.out.println(session);
						request.getRequestDispatcher("/tboard").forward(request, response);
					
				}
				else {
					
					request.setAttribute("data","wrong pssword");
					request.getRequestDispatcher("/login.jsp").forward(request, response);
					
				}
			}
			else{
				request.setAttribute("data","user does not exist");
				
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
			
		
	}


}
