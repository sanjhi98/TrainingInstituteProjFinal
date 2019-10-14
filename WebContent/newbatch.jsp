<%@page import="com.vir.model.Trainer"%>
<%@page import="com.vir.dao.TrainerDAOImpl"%>
<%@page import="com.vir.dao.TrainerDao"%>
<%@page import="com.vir.dao.BatchDao"%>
<%@page import="com.vir.dao.CourseDAOImpl"%>
<%@page import="com.vir.dao.BatchDAOImpl"%>
<%@page import="com.vir.model.Course" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <title>Apni Paathshala</title>
</head>

<style type="text/css">

*{
    margin: 0;
    padding: 0;
    
}

.container{

    display: flex;
    justify-content: center;
    align-items: center;
}
form{
    display: flex;
    flex-direction: column;
}

.field{

    display: flex;
    margin: 8px;
    padding: 5px;
}
input{
    margin: 8px;

}
.course{
    width: 150px;
    height: 25px;
    padding: 10px;

}
.course option{
    width: 150px;
    height: 30px;
}
label{
 margin-right: 5px;
 font-size: 16px;
 font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
.header{
    display: flex;
    margin-top: 20px;
    margin-bottom: 20px;
    justify-content: space-evenly;
    align-items: center;
}

.button1{

    background-color: #d32f2f;
    color: white;
    font-size: 18px;
    padding: 4px;
    width: 200px;
    height: 35px;
    cursor: pointer;
    margin-left: 40px;
    font-family: 'Times New Roman', Times, serif;
    border: 1px solid white;;
}

.button1:hover{

    background-color: #8bc34a;
    color: black;
    transition: 0.9s;
    border: 1px solid black;
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

          <li class="nav-item">
            <a href="#" class="nav-link">About Us</a>
            
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <% if((String)request.getAttribute("message")!=null){%>

    <%= (String)request.getAttribute("message") %>
    
    <%} %>

  <div class="header">

        <div class="header1">
  
              <h3>Add New Batch</h3>
        </div>
  
        <div class="header2">
       
           Welcome Admin Name
  
        </div>
    
         
  
  
    </div>

  <div class="container">
    
     <form action="batch" method="post">

        <div class="field">
               <label> Course:</label> <select name="cid" id="course" style="width: 200px; height:30px;">
                    <%
                    CourseDAOImpl cdao = new CourseDAOImpl();
                    List<Course> list = cdao.getAllCourses();
                    
                    
                    for(Course course: list) { %>
                   
                         <option value = "<%= course.getCourseID()%>"><%= course.getCourseName() %></option>
                         
                 
                 <% } %>
                 
                    </select>
        </div>
    

     	<div class="field">
             <label>StartDate:</label>   	<input type="text" name="startdate">


         </div>
    
         <div class="field">
               <label> EndDate:</label>	<input type="text" name="enddate">

         </div>

         <div class="field">
               <label>Price:</label> 	<input type="number" name="price">
         </div>
		
       
         <div class="field">
             <label> Trainer:</label>   <select name="tid" style="width: 200px; height:30px;">
                       
                       <%
                       
                          TrainerDao tdao = new TrainerDAOImpl();
                       
                          List<Trainer> trainerList = tdao.getAllTrainer();
                         
                       %>
                       <% for(Trainer trainer: trainerList){ %>
                       
                     
                          <option value="<%= trainer.getTrainerID()%>"><%= trainer.getUsername() %></option>
                       
                       <%} %>
                    </select>
         </div>
      
      
         <div class="field">
         
                <input type="submit" value="Add" class="button1">

         </div>
	 

     </form>

  </div>
  </body>
  </html>