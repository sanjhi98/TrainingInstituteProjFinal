<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />




<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


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
	margin:10px;
	
	border-style: 1px solid black;
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
      <a href="index.jsp" class="navbar-brand">MangoInk Technology</a>
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
   if(request.getAttribute("data")!=null){
	   String msg = (String)request.getAttribute("data");  
	  %>
   
   <%= msg %>

<%}%>


  <div>
  	<div class="container1">

  	<h1>Login</h1>
  	<form action="admin" method="post">
  		<div>
  		User Name<input type="text" name="uname">
  	</div>

  	<div>
  		Password<input type="password" name="password">
      </div>
      
      <div>
            Type <select name="type" style=width:150px;">
               <option value="" disabled selected>Select your option</option>
                <option value="admin">As Admin</option>
                <option value="student">As Student</option>
                <option value="trainer">As Trainer</option>
  
  
            </select>
        </div>
  	<div>
  		<button class="btn btn-md btn-primary" id="login1">Login</button>
      </div>
      
     
  	</form>
  	<div>
  		<span>Not a Member?</span>
  		  <form action="register.jsp">
  		Register As <select name="type1" style="width:150px;">
               <option value="" disabled selected>Select your option</option>
                <option value="student">As Student</option>
                <option value="trainer">As Trainer</option>
  
  
            </select>
    
  		<button class="btn btn-md btn-success">Register</button>
    </form>
  	</div>
  </div>

  	
</body>



</html>
