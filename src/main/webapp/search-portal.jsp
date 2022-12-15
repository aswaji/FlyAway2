<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FlyAway</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/global.css">
</head>
<body>
<nav>
    <a href="index.jsp" class="nav-logo"><img src="img/favicon.png" class="img-fluid" alt="image" width="18%">  FlyAway</a>
    <a href="login.jsp" class="nav-login"><i class="fa fa-gear"></i> Admin Login</a>

</nav>
<main class="signin form_page">
      <div class="form-container">
        <div class="form-heading">
          <h1>Search Flights</h1>
        </div>
        <form action="search" method="post">
          <div class="form-group">
            <label for="date">Date</label>
            <input type="date" id="date" name="date" placeholder="Travel Date..">
          </div>
          <div class="form-group">
             <label for="source">Source</label>
            <select id="source" name="source">
	            <option value="India">India</option>
	            <option value="USA">USA</option>
	            <option value="UK">UK</option>
             </select>
          </div>
          
          <div class="form-group">
	         <label for="destination">Destination</label>
	         <select  class="form-control" id="destination" name="destination">
	             <option value="USA">USA</option>
	             <option value="UK">UK</option>
	             <option value="Saudi">Saudi</option>
	         </select>
          </div>
          <div class="form-group">
	          <label for="persons">No of Persons</label>
	          <select class="form-control" id="persons" name="persons">
	              <option value="1">1</option>
	              <option value="2">2</option>
	              <option value="3">3</option>
	              <option value="4">4</option>
	              <option value="5">5</option>
	          </select>
          </div>
          <button type="submit" class="btn" value="Submit">Search Flights</button>
        </form>
      </div>
      <div class="panel-container">
        <img src="img/search.svg" />
      </div>
</main>
</body>
</html>