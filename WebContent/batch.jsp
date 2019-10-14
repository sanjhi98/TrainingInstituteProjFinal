<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="com.vir.model.*"  %>
    <%@ page import ="com.vir.dao.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
<title>Insert title here</title>
<style type="text/css">
  
  .container1{

    width: 100%;
     height: 100vh;
     margin: 10px;
     display: flex;
     flex-direction: row;
     justify-content: space-between;
     flex-wrap: wrap;
  }
  .course{
      display: flex;
      flex-direction: column;
      justify-content: space-evenly;
      width: 300px;
      height: 300px;
      border: 2px solid black;
      margin: 10px;
      padding: 10px;
  }
  .field{
    display: flex;
    text-transform: capitalize;
      justify-content: center;
      align-items: center;
  }
  .f1{
  margin: 8px;
  padding:5px;
  }
  form{
  
  display:flex;
  flex-direction: column;
  }
  
  .header{
  display: flex;
  justify-content:space-around;;
  }

  .button{
       display: flex;
      justify-content: center;
      align-items: center;
      font-size: 20px;
      text-decoration: none;
      cursor: pointer;
      height: 35px;
      width: 200px;
      background-color: orangered;
      color:white;
      margin-top: 40px;
  }
 
  .button:hover{
      background-color: white;
      color: black;
      border: 1px solid black;
      transition: 1s;
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

           <%if(session.getAttribute("data")!=null){ %>

          <li class="nav-item">
            <a href="logout.jsp" class="nav-link">Logout</a>
            
          </li>
          <%} %>
        </ul>
      </div>
    </div>
  </nav>

<%
   if(request.getAttribute("alreadyenroll")!=null){%>
   
   <span><%=(String)request.getAttribute("alreadyenroll")%></span><%} %>
<%

 BatchDao batchdao = new BatchDAOImpl();
  CourseDAO courseDao = new CourseDAOImpl();
 List<Batch> batchList = batchdao.getAllBatch() ;%>
 
 <div class="header">
 
 <div class="header1">
  <h3>
    Student Dashboard
  </h3>
 </div>
 
 <div class="header2">
 <span>
   Welcome  <%= ((Student)session.getAttribute("data")).getUsername() %>
 </span>
 </div>
 </div>
 
  <div class="container1">
 <%for(Batch batch:batchList){%>
   <div class="course">
   <div class="field">
   <form action="enrollment" method="post">
    
    <div class="f1">
       course : <%
          Course course = courseDao.findById(batch.getCourseID());%>
          <span><%= course.getCourseName() %></span>
    </div>
    
    <div class="f1">
    
     startDate: <span><%= batch.getStartDate() %></span>
     
     
     </div>
     
        <div class="f1">
     EndDate: <span><%= batch.getEndDate() %></span>
     </div>
     
        <div class="f1">
     Price: <span><%= batch.getPrice() %></span>
     </div>
     <% session.setAttribute("batch", batch); %>
        <div class="f1">
         <input type="submit" value="Enroll" class="button">
        </div>
    
          
      
    
    </form>
    </div>
 </div>
       <%} %>
       </div>
  
</body>
</html>