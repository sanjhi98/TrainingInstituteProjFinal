<%@page import="com.vir.dao.PaymentDAOImpl"%>
<%@page import="com.vir.dao.PaymentDAO"%>
<%@page import="com.vir.model.Payment"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% PaymentDAO pdao=new PaymentDAOImpl();
   List<Payment> al=pdao.getAll(); 
   for(Payment p: al){%>
	<select name="sid">
		<option value="<%=p.getSID() %>"><%=p.getSID() %></option>
	</select><br>
	<input type="text" name="status" value="<%=p.getStatus() %>">
	<%} %>
</body>
</html>