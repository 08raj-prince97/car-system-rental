package com.car.rental.system;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import com.mysql.jdbc.Connection;

public class CustomerReportDao {
	String url ="jdbc:mysql://localhost:3306/car_rental_system";
	String uname ="root";
	String pass ="";
	String sql ="select * from userdetails where type='user'";
	
	public ArrayList userDetails() {
		ArrayList al=new ArrayList();
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url,uname,pass);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs=st.executeQuery();

			while(rs.next()) {
				
			     HashMap<String, String> hmap = new HashMap<String, String>();

			      /*Adding elements to HashMap*/
			      hmap.put("id", rs.getString(1));
			      hmap.put("name", rs.getString(2));
			      hmap.put("mobile", rs.getString(3));
			      hmap.put("email", rs.getString(4));
			      hmap.put("city", rs.getString(6));
			      hmap.put("pincode", rs.getString(7));
			      hmap.put("state", rs.getString(8));
			      hmap.put("address", rs.getString(9));
			      al.add(hmap);
			  	
			}
			
			return al;
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		return al;

}}
