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
<title>Admin Dashboard</title>
</head>

<style type="text/css">

.container1{
    margin: 60px;
    padding: 20px;
    display: flex;
    justify-content: space-evenly;
    
}
.mycard{

    margin:10px;
    width: 250px;
    height: 200px;
    display: flex;
    flex-wrap:wrap;
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

    height: 40px;
    width: 250px;
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
            <a href="/html/about.html" class="nav-link">About Us</a>
          </li>
          
          <%if(session.getAttribute("data")==null){ %>

          <li class="nav-item">
            
            <a href="login.jsp" class="nav-link">Login</a>
            
          </li>
          <%}else{ %>
            <li class="nav-item">
            
            <a href="logout.jsp" class="nav-link">Logout</a>
            
          </li>
             
          
          <%} %>
        </ul>
      </div>
    </div>
  </nav>
  
  <div class="header">

      <div class="header1">

            <h3>Admin DashBoard</h3>
      </div>

      <div class="header2">
     
         Welcome Admin Name

      </div>
  
       


  </div>


<div class="container1">
        <div class="mycard bg-primary">
        
                <form action="batchremoveupdate.jsp">
                        <input type="submit" value="View All Batches" class="button1">
                        </form>
        
        </div>
        <div class="mycard bg-warning">

                <form action="course.jsp">
                        <input type="submit" value="View All Courses" class="button1">
                        </form>
        
                
       
        </div>
        <div class="mycard bg-success">

                <form action="newbatch.jsp">
                        <input type="submit" value="Add New Batch" class="button1">
                        </form>
         
             
         
        </div>
        <div class="mycard bg-primary">
         
                <form action="newcourse.jsp">
                        <input type="submit" value="Add Course" class="button1">
                       </form>
        
        </div>
        <div class="mycard bg-danger">
         
                <form action="paymentstatus.jsp">
                        <input type="submit" value="View Payment Status" class="button1">
                       </form>
        
        </div>

 
 
  
  
  
  
</body>
</html>