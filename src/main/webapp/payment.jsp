<%@ page import="model.Booking" %>
<%@ page import="model.Search" %>
<%
    Booking.passenger_name = request.getParameter("pname");
    Booking.passenger_email= request.getParameter("email");
    Booking.passenger_phone= request.getParameter("phone");

    if (Booking.passenger_name.equals("")
            || Booking.passenger_email.equals("")
            || Booking.passenger_phone.equals("")) {
        out.println("Please enter valid passenger details");
    }
    else {
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Payment Details - FlyAway Airlines</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/global.css">
	<style>
		.total{
		margin-bottom:20px;
		color:#333;
		}
	</style>
</head>

<body>
<nav>
    <a href="index.jsp" class="nav-logo"><img src="img/favicon.png" class="img-fluid" alt="image" width="18%">  FlyAway</a>
    <a href="login.jsp" class="nav-login"><i class="fa fa-gear"></i> Admin Login</a>

</nav>
<main class="payment form_page">
      <div class="form-container">
        <div class="form-heading">
          <h1>Checkout</h1>
          <p>Enter Payment Details</p>
        </div>
        <form action="${pageContext.request.contextPath}/thank-you.jsp" method="post" >
	         <div class="form-group">
                 <label for="card_details">Name on Card</label>
                 <input type="text" class="form-control" id="name_on_card" name="name_on_card" placeholder="Enter Name on Card">
             </div>
			<div class="form-group">
                 <label for="card_details">Card Number</label>
                 <input type="number" class="form-control" id="card_details" name="card_details" placeholder="Enter Card Number">
             </div>
       		<p class="total"><strong>Total Payment = <br> <%=Booking.ticket_price%> X <%=Search.persons%> persons = SAR.<%=Booking.ticket_price*Search.persons%></strong></p>
              
          <button type="submit" class="btn" value="Submit">Confirm Payment</button>
        </form>
      </div>
      <div class="panel-container">
        <img src="img/payment.svg" />
      </div>
</main>
</body>

</html>
<%
    }
%>
