<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.vir.model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
<title>Payment Mode</title>

<style>

.container1{
height:80vh;
display:flex;
justify-content: center;
align-items: center;
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
            <a href="#" class="nav-link">Home</a>
          </li>
          <li class="nav-item">
            <a href="/html/about.html" class="nav-link">About Us</a>
          </li>

           <%if(session.getAttribute("data")==null){ %>
          <li class="nav-item">
            
            <a href="login.jsp" class="nav-link">Login</a>
            
          </li>
          <%}else{ %>
          
            <li class="nav-item">
            
            <a href="login.jsp" class="nav-link">Login</a>
            
          </li>
          
          <%} %>
        </ul>
      </div>
    </div>
  </nav>
  
  <div class="container1">
	<form action="CardDetails.jsp" method="post">
		Select Bank: <span><select name="banks">
			<option value=""></option>
			<option value="SBI">STATE BANK OF INDIA</option>
			<option value="HDFC">HDFC BANK</option>
			<option value="BANK OF BARODA">BANK OF BARODA</option>
			<option value="CITIBANK">CITIBANK</option>
			<option value="AXIS BANK">AXIS BANK</option>			
		</select></span>
		<br>
		<input type="radio" name="mode" id="CreditCard" checked>Credit Card<br>
		<input type="radio" name="mode" id="DebitCard">Debit Card<br>
		<input type="submit" value="Proceed" class="btn btn-success">
		</form>
		</div>
		<% Student student=(Student)session.getAttribute("student");
			session.setAttribute("student", student);
		%>
</body>
</html>