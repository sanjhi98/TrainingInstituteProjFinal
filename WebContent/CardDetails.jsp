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
<title>Payment Details</title>
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
 margin: 8px;
 padding:3px;
}

.header{
margin:10px;
display:flex;
font-size: 18px;

justify-content: space-evenly;
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

<div class="header">

<div class="header1">
 
 <h4>Complete Payment</h4>
</div>

<div class="header2">
<%if(session.getAttribute("data")!=null){ %>
<span>
Welcome: <%=((Student)session.getAttribute("data")).getSName() %>
</span>
<%} %>
</div>

</div>

<div class="container1">

<form action="Payment" method="post">
<div class="field">
Enter Card Number: <span><input type="text" name="CardNumber"></span><br>
</div>

<div class="field">
Enter CVV: <span> <input type="text" name="CVV"></span><br>
</div>
	
<div class="field">
Enter Expiry Date: <span> <input type="month" id="start" name="start"
       min="2019-08" value="2019-10"></span>
</div>

<div class="field">
 <input type="submit" value="Pay" class="btn btn-danger">

</div>
      
       <%  Student student = (Student)session.getAttribute("student"); 
       	   session.setAttribute("paymentstatus",student);
       %>
       </form>
     </div>
	
</body>
</html>