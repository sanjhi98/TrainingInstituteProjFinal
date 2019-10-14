<%@page import="com.vir.model.Student"%>
<%@page import="com.vir.model.Course"%>
<%@page import="java.util.List"%>
<%@page import="com.vir.dao.CourseDAOImpl"%>
<%@page import="com.vir.dao.CourseDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
<title>Courses</title>
<style>
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
img{
      width: 280px;
      height: 180px;
  }

 .con{
      display: flex;
      justify-content: center;
      align-items: center;
  }
  .header{
  margin-top:20px;
  display: flex;
  justify-content:space-around;;
  }
  span{
    display: flex;
      justify-content: center;
      align-items: center;
      font-size: 20px;
      text-decoration: none;
      cursor: pointer;
      height: 35px;
      text-transform: capitalize;
      width: 200px;
      background-color: orangered;
      color:white;
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
  <% String images[] = {"../assests/advjava.","../assests/python.jfif","../assests/webdev.png","../assests/Machine-learning.jpg"}; %>
  
  <%
   CourseDAO cdao = new CourseDAOImpl();
   List<Course> courseList = cdao.getAllCourses();
    
  %>
  
   <div class="header">
 
 <div class="header1">
  <h3>
    Student Dashboard
  </h3>
 </div>
 
 <div class="header2">
 <p>
   Welcome
 </p>
 </div>
 </div>

  <div class="container1">
  
  <%for(Course course:courseList){ %>
    <div class="course">
       
              <div class="img">
                    <img src="assests/c.jpg" alt="">
                    </div>
                    <div class="con">
                        <span><%=course.getCourseName() %></span>
                    </div>
    
    </div>
    <%} %>
  
  </div>

</body>
</html>