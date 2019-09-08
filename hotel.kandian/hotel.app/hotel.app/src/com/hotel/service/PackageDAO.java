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
			
			String query = "SELECT id, name, mprice, nprice, persons, description, features, img FROM Packages";
			ArrayList<HPackage> packages = new ArrayList<HPackage>();
			
			con = SetConnection.setConnection();
			
			st = con.createStatement();
			rs = st.executeQuery(query);
			
			while(rs.next()) {
				HPackage pk = new HPackage();
				int id = Integer.parseInt(rs.getString("id"));
				String name = rs.getString("name");
				double mPrice = Double.valueOf(rs.getString("mprice"));
				double nPrice = Double.valueOf(rs.getString("nprice"));
				int persons = Integer.parseInt(rs.getString("persons"));
				String description = rs.getString("description");
				String features = rs.getString("features");
				String img = rs.getString("img");
				pk.setPackageId(id);
				pk.setPackageName(name);
				pk.setDescription(description);
				pk.setFeatures(features);
				pk.setMonthPrice(mPrice);
				pk.setNightPrice(nPrice);
				pk.setPersons(persons);
				pk.setImg(img);
	
			
				packages.add(pk);
			}
			
			return packages;
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
}
