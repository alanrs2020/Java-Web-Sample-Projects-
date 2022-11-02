<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/login.css"/>
<meta charset="ISO-8859-1">
<title>Login In</title>
</head>
<body>

<div class="split left">
  <div class="centered">
  
  <h2>Login here</h2>
  <form method="post" action="welcome.jsp">
 <!--  <label for="email">Email</label> -->
  <input id="email" type="email" placeholder="Enter your email." name="email" class="input-box"/><br>
  
   <!-- <label for="password">Password</label> -->
  <input id="password" name="password" type="password" placeholder="Enter your password." class="input-box"/><br>
  
  <input type="submit" value="Sign In" class="pbuttons"/>
  
  </form>
  
  </div>
</div>

<div class="split right">
  <div class="centered">
   
  </div>
</div>

</body>
</html>