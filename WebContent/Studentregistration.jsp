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
  <link rel="stylesheet" href="./css/studenRegister.css"/>
<title>Student Registration Form</title>
<style type="text/css">
body{
  background-color: #ff4081;
  color: antiquewhite
}

.container1{
 
  display: flex;
  justify-content: center;
  align-items: center;
}
.form{
  display: flex;
  flex-direction: column;
}
td{
  font-family: Georgia, 'Times New Roman', Times, serif;
  font-size: 20px;
  margin: 10px;
  padding: 8px;
}

.header1{
  display: flex;
  justify-content: center;
  align-items: center;

}
h1{
  font-family: cursive;
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
            
            <a href="login.jsp" class="nav-link">Login</a>
            
          </li>
        </ul>
      </div>
    </div>
  </nav>

       <div class="main">
        
        <div class="header1">
                        <h1>Student Registration Form</h1>

        </div>
	
	<%
	   String message = (String)request.getAttribute("message");
	   if(message!=null)
	   {%>
		   
		   <p><%= message %></p>
	   <%} %>
	
        
        <div class="container1">


                        <form action="studeregserv.jsp">
                                        <table style="width: 50%">
                                                <tr>
                                                        <td>Name:</td>
                                                        <td><input type="text" name="name"></td></tr>
                                                        <tr>
                                                        <td> Father's Name:</td>
                                                        <td><input type="text" name="fname"></td></tr>
                                                        <tr>
                                                        <td> UID:</td>
                                                        <td><input type="text" name="uid"></td></tr>
                                                        <tr>
                                                        <td> Age:</td>
                                                        <td><input type="text" name="age"></td></tr>
                                                        <tr>
                                                        <td>User Name:</td>
                                                        <td><input type="text" name="username"></td></tr>
                                                        <tr>
                                                        <td>Password:</td>
                                                        <td><input type="password" name="password"></td></tr>
                                                        <tr>
                                                        
                                                        
                                                        
                                        </table>
                                        <input type="submit" value="Submit" class="btn btn-lg btn-primary">
                                </form>


        </div>

        </div>

	
</body>
</html>