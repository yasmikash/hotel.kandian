package com.hotel.service;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.hotel.model.HPackage;
import com.hotel.model.*;
public class PackageDAO {

	public static Connection con;
	public static Statement st;
	public static ResultSet rs;
	public static HPackage pk;
	
	public static ArrayList<HPackage> getPackages() {
		try {
			
			String query = "SELECT name FROM Packages";
			ArrayList<HPackage> packages = new ArrayList<HPackage>();
			
			con = SetConnection.setConnection();
			
			st = con.createStatement();
			rs = st.executeQuery(query);
			
			while(rs.next()) {
				HPackage pk = new HPackage();
				String name = rs.getString("name");
				pk.setPackageName(name);
				packages.add(pk);
			}
			
			 
			
			return packages;
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
}
