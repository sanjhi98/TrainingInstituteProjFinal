<%@page import="com.vir.controller.BuisnessService"%>
<%@page import="com.vir.dao.StudentServiceImpl"%>
<%@page import="com.vir.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("name");
String fname = request.getParameter("fname");
String uid = request.getParameter("uid");
int age = Integer.parseInt(request.getParameter("age"));
String username = request.getParameter("username");
String password = request.getParameter("password");
BuisnessService service = new BuisnessService();
if(service.checkForUniqueUsername(username))
{
	Student student = new Student(name,fname,uid,age,username,password);
	StudentServiceImpl studentServiceImpl = new StudentServiceImpl();
	boolean expected = studentServiceImpl.addStudent(student);
	System.out.println(expected);
	if(expected)
	{
		
		request.getRequestDispatcher("/login.jsp").forward(request, response);
	}else {
		request.setAttribute("message","Some Error Occurred..Try Again");
		request.getRequestDispatcher("/Studentregistration.jsp").forward(request, response);
	}
	
}else
{
	request.setAttribute("message","Username Already Exists");
	request.getRequestDispatcher("/Studentregistration.jsp").forward(request, response);
}	




%>
</body>
</html>