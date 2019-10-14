<%@page import="java.util.List"%>
<%@page import="com.vir.dao.CourseDAOImpl"%>
<%@page import="com.vir.dao.CourseDAO"%>
<%@page import="com.vir.model.Course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title> Trainer Registration Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />




<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="trainerReg.css">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/trainerReg.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
<style>
body{
	text-align: center;

}
span{
	color: blue;
}
input{
	margin-top: 10px;
	margin-left: 15px;
	width: 200px;
	height: 35px;
	border:0px;
	border-style: none;
}
select:{
margin-top:10px;
margin-left:15px;
}
button{
	margin-top: 10px;
}
.container1{
	margin-top: 100px;

}
.container2{
	display: none;
}
#login1{
	width: 200px;
}

</style>
</head>
<body>
	
	 <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <div class="container">
      <a href="index.html" class="navbar-brand">Apni Patthshala</a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a href="index.html" class="nav-link">Home</a>
          </li>
          <li class="nav-item">
            <a href="about.html" class="nav-link">About Us</a>
          </li>
          <li class="nav-item">
            <a href="services.html" class="nav-link">Achievements</a>
          </li>
         
        </ul>
      </div>
    </div>
  </nav>
	
	
	<%
	   CourseDAO cdao = new CourseDAOImpl();
	List<Course> courseList = cdao.getAllCourses();
	
	
	%>
		
		<div class="container1">
		<h1>Trainer Registration Form</h1>
			
				<form action="TrainerServlet" method="post">
				<div>
				   Name: <input type="text" name="name" placeholder="Enter Name" required=""><br>
				    </div>
				    <div>
				   UID: <input type="text" name="uid" placeholder="Enter Unique Id" required=""><br>
				    </div>
				    <div>
				   AGE: <input type="text" name="age" placeholder="Enter Age" required=""><br>
				    </div>
				    <div>
				    <%if(courseList.size()!=0){ %>
				Specialization: <select  id="myList" name="specialization">
				<option value="" disabled selected>Enter Specialization</option>
				<%for(Course course:courseList){ %>
						
						<option value="<%= course.getCourseID()%>"><%= course.getCourseName() %></option>
						
						<%} %>

				</select>
				<%} %>
				</div>
				
				<div>
				Username: <input class="text" type="text" name="username" placeholder="Username" required=""><br>
				
				</div>
				
				<div>
				Password:	<input class="text" type="password" name="password" placeholder="Password" required="">
					
					</div>
				
				<div>
  		<button class="btn btn-md btn-primary" id="login1">Register</button>
      </div>
				</form>
				<p>Already have an Account? <a href="login.jsp"> Login Now!</a></p>
			</div>
		
		
		</body>
</html>