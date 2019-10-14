<%@page import="com.vir.dao.BatchDAOImpl"%>
<%@page import="com.vir.dao.BatchDao"%>
<%@page import="com.vir.model.Batch"%>
<%@page import="java.sql.Date"%>
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
    Integer courseId = Integer.parseInt(request.getParameter("cid"));
    Date startdate = Date.valueOf(request.getParameter("startdate"));
    Date enddate = Date.valueOf(request.getParameter("enddate"));
    Double price = Double.valueOf(request.getParameter("price"));
    Integer trainerID = Integer.parseInt(request.getParameter("tid"));
    
    Batch batch = new Batch(courseId,startdate,enddate,price,trainerID);
    System.out.println(batch.getTrainerId());
    BatchDao bdao = new BatchDAOImpl();
    boolean expected = bdao.addBatch(batch);
    if(expected)
    {
    	request.setAttribute("success","added successfully");
    	request.getRequestDispatcher("").forward(request, response);
    }else{
    	request.setAttribute("failure","Some Error occured");
    }


%>
</body>
</html>