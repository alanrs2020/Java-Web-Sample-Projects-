<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/welcome.css"/>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
<div class="top-bar"></div>
<div id="main-body">
 <% String email = request.getParameter("username");
 String pass = request.getParameter("password");
 
 %>
 <h1>Email: <% out.print(email); %> </h1>
 <h2> Password <% out.print(pass); %></h2>
</div>
</body>
</html>