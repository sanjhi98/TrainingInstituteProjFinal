<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
  String type = request.getParameter("type1");

  if(type.equals("student"))
  {
	  
	  request.getRequestDispatcher("Studentregistration.jsp").forward(request,response);
  }else{
	  request.getRequestDispatcher("trainerReg.jsp").forward(request,response);
  }


%>

</body>
</html>