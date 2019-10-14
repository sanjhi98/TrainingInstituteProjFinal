<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.vir.dao.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="com.vir.model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
<title>All Batches</title>
<style type="text/css">
.mycard{
margin:50px;
}

</style>
</head>
<body>
 <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
      <div class="container">
        <a href="/" class="navbar-brand">MangoInk Technology</a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a href="#" class="nav-link">Home</a>
            </li>
  
            <li class="nav-item">
                <a href="#" class="nav-link">Achievements</a>
              </li>
            <li class="nav-item">
              <a href="#" class="nav-link">About Us</a>
            </li>
  
            <li class="nav-item">
              <a href="#" class="nav-link">About Us</a>
              
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
    <% String message = (String)request.getAttribute("message"); %>
    
    <% if(message!=null) {%>
    <div class="message">
    <p><%= message %></p>
    </div>
    <%} %>
    <%
     BatchDao batchdao = new BatchDAOImpl();
		  CourseDAO courseDao = new CourseDAOImpl();
		 List<Batch> batchList = batchdao.getAllBatch();%>
   <%  for(Batch batch:batchList){%>
   <form action="batchaction.jsp">
    <div class="card text-center mycard">
    <%
		          Course course = courseDao.findById(batch.getCourseID());%>
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
    <h5 class="card-title">Course :<%= course.getCourseName() %></h5>
    <p class="card-text">Start Date: <%= batch.getStartDate() %></p>
    <p class="card-text">End Date: <%= batch.getEndDate() %></p>
    <p class="card-text">Price: <%= batch.getPrice() %></p>
       <% session.setAttribute("batch", batch); %>
       <input type="submit" value="Remove" class="btn btn-primary">
   
  </div>
</div>
</form>
<%} %>
		

		
		
		   <
</body>
</html>