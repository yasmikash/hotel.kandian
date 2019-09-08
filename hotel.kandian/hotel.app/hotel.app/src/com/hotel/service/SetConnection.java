package com.hotel.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SetConnection implements MyConnection {

static Connection con = null;
	
	public static Connection setConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				con = DriverManager.getConnection(URL, USERNAME, PWD);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return con; 
		
	}
	
	
}
