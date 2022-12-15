<%@page import="servlets.Login"%>
<% Login.isLoggedIn = false; %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin - Login FlyAway Airlines</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/global.css">
    <style>
       
    </style>
</head>
<body>
	<main class="signin form_page">
      <div class="form-container">
        <div class="form-heading">
          <h1>Admin Login</h1>
        </div>
        <form action="login" method="post">
          <div class="form-group">
            <label for="username">Username</label>
            <input
              id="email"
              type="email"
              name="email"
              placeholder="Enter Your Email"
              required
            />
            <br><small id="emailHelp" class="form-text text-muted">&nbsp;&nbsp;Email : admin@flyaway.com</small>
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input
              id="password"
              type="password"
              name="password"
              placeholder="Enter Your Password"
              required
            />
            
          </div>
          <button class="signinBtn" type="submit" name="signin">Login</button>
        </form>
      </div>
      <div class="panel-container">
        <img src="img/login.svg" />
      </div>
    </main>
</body>
</html>
