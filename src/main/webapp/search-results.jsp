<%@page import="java.sql.*"%>
<%@ page import="model.Search" %>
<%
	String driverName = "com.mysql.jdbc.Driver";
	
	
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "flyaway";
	String user = "root";
	String password = "";

    String query = Search.getQuery();
    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Search Results - FlyAway Airlines</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/global.css">
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
        body, html {
            height: 100%;
            line-height: 1.8;
        }
        .bgimg-1 {
            background-position: center;
            background-size: cover;
            background-image: url("img/plane.png");
            min-height: 100%;
        }
        .w3-bar .w3-button {
            padding: 16px;
        }
    </style>
</head>

<body>
<nav>
    <a href="index.jsp" class="nav-logo"><img src="img/favicon.png" class="img-fluid" alt="image" width="18%">  FlyAway</a>
    <a href="login.jsp" class="nav-login"><i class="fa fa-gear"></i> Admin Login</a>

</nav>
<div class="container">
    <h2 align="center"><span><strong>Search Results</strong></span></h2>
    <p align="center"><span><strong>
        Showing available flights from <%=Search.source%> to  <%=Search.destination%> <br>
        Date of travel : <%=Search.date%> (<%=Search.day%>)  <br>
        No of travellers :  <%=Search.persons%>  <br>
    </p>
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <th scope="col">Flight</th>
            <th scope="col">Source</th>
            <th scope="col">Destination</th>
            <th scope="col">Date</th>
            <th scope="col">Ticket Price</th>
            <th scope="col">Select</th>
        </tr>
        </thead>
        <tbody>
        <br><p align="center"><span><strong>Select a flight</strong></span></p><br>
        <%
            try{
            	Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(connectionUrl+dbName, user, password);
                statement=connection.createStatement();
                resultSet = statement.executeQuery(query);
                while(resultSet.next()){
        %>
        <tr bgcolor="#F5F5F5">
            <td><%=resultSet.getString("name") %></td>
            <td><%=resultSet.getString("source") %></td>
            <td><%=resultSet.getString("destination") %></td>
            <td><%=Search.date%></td>
            <td><%=resultSet.getString("ticket_price") %></td>
            <td>
                <form action="book" method="post">
                    <input type="hidden" id="name" name="flight_name" value="<%=resultSet.getString("name")%>">
                    <input type="hidden" id="ticket_price" name="ticket_price" value="<%=resultSet.getString("ticket_price")%>">
                    <input type="hidden" id="flight_id" name="flight_id" value="<%=resultSet.getString("flight_id")%>">
                    <input type="submit" class="btn btn-success" value="Book This Flight">
                </form>
            </td>
        </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        </tbody>
    </table>
</div>

</body>
</html>