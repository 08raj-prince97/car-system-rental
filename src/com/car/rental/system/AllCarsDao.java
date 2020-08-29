package com.car.rental.system;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import com.mysql.jdbc.Connection;

public class AllCarsDao {
	String url ="jdbc:mysql://localhost:3306/car_rental_system";
	String uname ="root";
	String pass ="";
	String sql ="select * from cars";
	
	public ArrayList allCars() {
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
			      hmap.put("number", rs.getString(2));
			      hmap.put("name", rs.getString(3));
			      hmap.put("company", rs.getString(4));
			      hmap.put("description", rs.getString(5));
			      hmap.put("type", rs.getString(6));
			      hmap.put("seats", rs.getString(7));
			      hmap.put("price", rs.getString(8));
			      hmap.put("image", rs.getString(9));
			      al.add(hmap);
			  	
			}
			
			return al;
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		return al;
	}
}
