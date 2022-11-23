package com.javaweb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.javaweb.beans.User;

public class ApplicationDao {

	public int registerUser(User user) {
		
		int rowsAffected = 0;
		
		try {
			Connection con = DBConnection.getDatabaseConnection();
			String query = "INSERT INTO user values(?,?,?,?)";
//			String query = "Insert into user values("+user.getUserId()+
//					","+user.getUsername()+","+user.getEmail()+
//					","+user.getPassword()+")";
			
			PreparedStatement st = con.prepareStatement(query);
			st.setInt(1, user.getUserId());
			st.setString(2, user.getUsername());
			st.setString(3, user.getEmail());
			st.setString(4, user.getPassword());
			rowsAffected =  st.executeUpdate();
			st.close();
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rowsAffected;
		
	}
	

	public boolean validateUser(String username, String password) {
		// TODO Auto-generated method stub
		
		boolean isValidUser = false;
		try {
			
			Connection connection = DBConnection.getDatabaseConnection();

			// write the select query
			String sql = "select * from user where email=? and password=?";

			// set parameters with PreparedStatement
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, password);

			// execute the statement and check whether user exists

			ResultSet set = statement.executeQuery();
			while (set.next()) {
				isValidUser = true;
			}
			
			
		}catch(Exception e){
			isValidUser = false;
		}
		
		return isValidUser;
	}
}
