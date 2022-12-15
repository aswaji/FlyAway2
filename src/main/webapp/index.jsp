<%@page import = "DB.DbCon" %>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="windows-1256">
	<title>FlyAway</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/global.css">
</head>
<body>
<nav>
    <a href="index.jsp" class="nav-logo"><img src="img/favicon.png" class="img-fluid" alt="image" width="18%">  FlyAway</a>
    <a href="login.jsp" class="nav-login"><i class="fa fa-gear"></i> Admin Login</a>

</nav>
    <main class="choose">
     <%-- <% out.print(DbCon.getConn()); %>  --%>
      <div class='choose_title'>
        <h1>Welcome To Our Flight Booking Agency</h1>
      </div>
      <div class="choose_cards">
        <div class="card">
          <h2>Book a Flight</h2>
          <a href="search-portal.jsp">Book</a>
          <img src="img/flight.svg" />
        </div>
        <div class="card">
          <h2>Admin Login</h2>
          <a href="login.jsp">Login</a>
          <img src="img/admin.svg" />
        </div>
      </div>
    </main>    
</body>
</html>
