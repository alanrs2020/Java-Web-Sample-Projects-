package com.javaweb.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection getDatabaseConnection() throws Exception {
		String Url = "jdbc:mysql://localhost:3306/users";
		String username = "root";
		String pass = "Teranet@t931";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(Url,username,pass);
		if(con != null) {
			System.out.print("Connection Made");
		
	}
		return con;
}
}