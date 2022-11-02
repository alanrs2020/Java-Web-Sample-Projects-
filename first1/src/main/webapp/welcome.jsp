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
 <% String email = request.getParameter("email");
 String pass = request.getParameter("password");
 
 %>
 <h1>Email: <% out.print(email); %> </h1>
 <h2> Password <% out.print(pass); %></h2>
</div>
<% 

java.sql.Connection con;
java.sql.Statement s;
java.sql.ResultSet rs;
java.sql.PreparedStatement pst;

con=null;
s=null;
pst=null;
rs=null;

String url= "jdbc:jtds:sqlserver://ALANSTRVCMS02\MSSQLSERVER02";
String id= "CORP/asathy01";
String pass = "";
try{

Class.forName("net.sourceforge.jtds.jdbc.Driver");
con = java.sql.DriverManager.getConnection(url, id, pass);

}catch(ClassNotFoundException cnfex){
cnfex.printStackTrace();

}

%>

</body>
</html>