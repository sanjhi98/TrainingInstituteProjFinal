<%@page import="com.vir.dao.BatchDAOImpl"%>
<%@page import="com.vir.dao.BatchDao"%>
<%@page import="com.vir.dao.EnrollmentServiceImpl"%>
<%@page import="com.vir.dao.EnrollmentService"%>
<%@page import="com.vir.model.Batch"%>
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
Batch batch = (Batch)session.getAttribute("batch");
Integer id=batch.getBatchID();
EnrollmentService eservice =new EnrollmentServiceImpl();
BatchDao bdao = new BatchDAOImpl();

if(eservice.removeByBatch(id))
{

	if(bdao.removeBatch(batch))
	{
		request.setAttribute("message", "Batch removed successfully");
		request.getRequestDispatcher("batchremoveupdate.jsp").forward(request, response);
	}
	else
	{
		request.setAttribute("message", "Batch could not be removed");
		request.getRequestDispatcher("batchremoveupdate.jsp").forward(request, response);
	}
}
else
{
	request.setAttribute("message", "Batch could not be removed");
	request.getRequestDispatcher("batchremoveupdate.jsp").forward(request, response);

}


%>

</body>
</html>