<%@ page import="model.Booking" %>


<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Booking Details - FlyAway Airlines</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/global.css">
  
</head>

<body>
<nav>
    <a href="index.jsp" class="nav-logo"><img src="img/favicon.png" class="img-fluid" alt="image" width="18%">  FlyAway</a>
    <a href="login.jsp" class="nav-login"><i class="fa fa-gear"></i> Admin Login</a>

</nav>
<main class="booking form_page">
      <div class="form-container">
        <div class="form-heading">
          <h1>Booking Details</h1>
          <p>Enter Passenger Details</p>
        </div>
        <form action="${pageContext.request.contextPath}/payment.jsp" method="post">
	         <div class="form-group">
	           <label for="pname">Passenger Name</label>
	           <input type="text" class="form-control" id="pname" name="pname" placeholder="Enter name of the/any passenger(s)">
	         </div>
			<div class="form-group">
                  <label for="email">Email address</label>
                  <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
              </div>
              <div class="form-group">
                  <label for="phone">Phone</label>
                  <input type="number" class="form-control" id="phone" name="phone" placeholder="Enter phone number">
              </div>
          <button type="submit" class="btn" value="Submit">Submit</button>
        </form>
      </div>
      <div class="panel-container">
        <img src="img/passenger.svg" />
      </div>
</main>
   
</body>
</html>
