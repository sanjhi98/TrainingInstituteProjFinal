package com.vir.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vir.dao.EnrollmentService;
import com.vir.dao.EnrollmentServiceImpl;
import com.vir.dao.PaymentDAO;
import com.vir.dao.PaymentDAOImpl;
import com.vir.model.Batch;
import com.vir.model.Enrollment;
import com.vir.model.Payment;
import com.vir.model.Student;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/Payment")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		BuisnessService service = new BuisnessService();
		Student student = (Student)request.getSession().getAttribute("paymentstatus");
		System.out.println(student.getSName());
		if(student!=null)
		{
			if(service.hasAlreadyPaid(student.getStudentID()))
			{
				System.out.println("Not null");
				request.setAttribute("alreadypaid", "Thank You...Payment has been done already");
				request.getRequestDispatcher("/student.jsp").forward(request, response);
			}else{
				
				Payment p=new Payment();
				p.setSID(student.getStudentID());
				System.out.println("noooo");
				p.setStatus("Paid");
				PaymentDAO pdao=new PaymentDAOImpl();
				boolean isAdded = pdao.addPayment(p);
				System.out.println(isAdded);
				if(isAdded)
				{
					request.getSession().setAttribute("student",student);
					request.setAttribute("success","Payment is successful");
					
					request.getRequestDispatcher("/student.jsp").forward(request, response);
				}else {
					Payment p2=new Payment();
					p2.setSID(student.getStudentID());
					p2.setStatus("Not Paid");
					PaymentDAO pdao2=new PaymentDAOImpl();
					pdao2.addPayment(p);
					request.setAttribute("notpaid","Some Error Ocurred..Try Again");
					request.getRequestDispatcher("/student.jsp").forward(request, response);
				}
				
			}
		}
		else {
			request.setAttribute("notloggedIn","Pleae Log In First");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}

}
