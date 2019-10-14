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
<title>Insert title here</title>

<style>
.container1{
height:60vh;
display:flex;
justify-content: center;
align-items: center;
}

form{
display:flex;
flex-direction:column;
}
.field{
margin:10px;
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
            <a href="/html/about.html" class="nav-link">About Us</a>
          </li>
          
          <li class="nav-item">
            <a href="logout.jsp" class="nav-link">LogOut</a>
          </li>
          </ul>
          </div>
          </div>
          </nav>
          
          <div class="container1">
          
          <form action="Course" method="post">
          <div class=field>
          Course Name:  <input type="text" name="coursename">
          </div>
          
          <div class="field">
           <input type="submit" value="Add" class="btn btn-success">
          </div>
		  
		   
	    </form>
          
          </div>
	
</body>
</html>