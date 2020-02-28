package com.car.rental.system;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import com.mysql.jdbc.Connection;

public class UserMyAccountDao {
	String url ="jdbc:mysql://localhost:3306/car_rental_system";
	String uname ="root";
	String pass ="";
	String sql ="select * from userdetails where email=?";
	
	public ArrayList userDetails(String email) {
		ArrayList al=new ArrayList();
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url,uname,pass);
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setString(1, email);
			ResultSet rs=st.executeQuery();

			while(rs.next()) {
				
			     HashMap<String, String> hmap = new HashMap<String, String>();

			      /*Adding elements to HashMap*/
			      hmap.put("name", rs.getString(1));
			      hmap.put("mobile", rs.getString(2));
			      hmap.put("email", rs.getString(3));
			      hmap.put("city", rs.getString(5));
			      hmap.put("pincode", rs.getString(6));
			      hmap.put("state", rs.getString(7));
			      hmap.put("address", rs.getString(8));
			      al.add(hmap);
			  	
			}
			
			return al;
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		return al;

}}
