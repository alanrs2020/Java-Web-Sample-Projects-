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
  
<h2>Login Here</h2>
 <h3 style="color:red;"> 
 <%
    if(null!=request.getAttribute("error"))
    {
        out.println(request.getAttribute("error"));
    }
%>
</h3>
<form action="login" method="post">
  <div class="imgcontainer">
    <img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
        
    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <!-- <button type="button" class="cancelbtn">Cancel</button> -->
    <a href="register.jsp">New Account</a>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
  
  <!-- <h2>Login here</h2>
  <form method="post" action="register">
  <label for="email">Email</label>
  <input id="email" type="email" placeholder="Enter your email." name="email" class="input-box"/><br>
  
   <label for="password">Password</label>
  <input id="password" name="password" type="password" placeholder="Enter your password." class="input-box"/><br>
  
  <input type="submit" value="Sign In" class="pbuttons"/>
  
  </form>
  <a href="register.jsp">New Account</a> -->
  </div>
</div>

<div class="split right">
  <div class="centered">
   
  </div>
</div>

</body>
</html>