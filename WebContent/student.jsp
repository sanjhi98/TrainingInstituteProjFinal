<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="com.vir.model.*"%>
    <%@ page import="com.vir.dao.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
  <link rel="stylesheet" href="home.css">
  <title>Student Dashboard</title>
</head>

<style type="text/css">

    .container1{
        margin: 30px;
        padding: 20px;
        display: flex;
        justify-content: space-evenly;
        
    }
    .mycard{
    
        width: 350px;
        height: 35px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-content: center;
        cursor: pointer;
    }
    .button1:hover{
       
        color: black;
        transition: 0.9s;
        
    }
    
    .button1{
    
        height: 35px;
        width: 350px;
        background-color: transparent;
        text-decoration: none;
        color:white;
        font-family: Georgia, 'Times New Roman', Times, serif;
        border: none;
        font-size: 20px;
        cursor: pointer;
    }
    
    .header{
    
        margin: 8px;
        padding: 5px;
        display: flex;
        justify-content: space-evenly;
    }
    
    </style>

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
  Student student = (Student)request.getAttribute("data");
 Student student1 = (Student)session.getAttribute("data");
  System.out.println(student1+" in student.jsp");
 request.setAttribute("studentData",student); 
 session.setAttribute("studentData",student1); %>
 
 
 <%
     EnrollmentDao enrollmentDao = new EnrollmentDaoImpl();
     Enrollment enrollment = enrollmentDao.findByStudentId(student1.getStudentID());
     Batch batch = null;
     Trainer trainer = null;
     if(enrollment!=null){
         BatchDao batchdao = new BatchDAOImpl();
        batch = batchdao.findById(enrollment.getBatchID());
     }
 
 
 
 %>

  <div class="header">
      <div class="header1">
          <h3>Student Dashboard</h3>

      </div>

      <div class="header2">
         <span>Welcome  <%= ((Student)session.getAttribute("data")).getUsername() %></span>
      </div>
  </div>
  
  <%if(batch!=null){ %>

  <div class="enrolled">

        <%
        CourseDAO courseDAO = new CourseDAOImpl();
        Course course = courseDAO.findById(batch.getCourseID());
     %>
  
        <div class="card text-center">
                <div class="card-header">
                  Currently Enrolled Course
                </div>
                <div class="card-body">
                  <h5 class="card-title">Course Name  : <%= course.getCourseName() %></h5>
                  <p class="card-text"> </p>
                  <p class="card-text">Start Date: <%= batch.getStartDate() %></p>
                  <p class="card-text">End Date: <%= batch.getEndDate() %> </p>
                 
                  <form action="enrollment" method ="delete">

                    <input type="submit" value="Cancel Enrollment" class="btn btn-primary">
                  </form>
                  
                </div>
                <div class="card-footer text-muted">
                  2 days ago
                </div>
              </div>
     

  </div>
  <%}else{ %>
  
    <h3>Currently not Enrolled in any course</h3>
  <%} %>

  <div class="container1">
        <div class="mycard bg-primary">
        
                <form action="batch.jsp">
                        <input type="submit" value="View Onging Batches" class="button1">
                        </form>
        
        </div>
        
        <div class="mycard bg-warning">

                <form action="course.jsp">
                        <input type="submit" value="View All Courses" class="button1">
                        </form>
        
                
       
        </div>
       
        
    
</body>
</html>