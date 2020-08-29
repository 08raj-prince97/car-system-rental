package com.car.rental.system;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import com.mysql.jdbc.Connection;

public class ContactReportDao {
	String url ="jdbc:mysql://localhost:3306/car_rental_system";
	String uname ="root";
	String pass ="";
	String sql ="select * from contactreport";
	
	public ArrayList userDetails() {
		ArrayList arr=new ArrayList();
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url,uname,pass);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs=st.executeQuery();

			while(rs.next()) {
				
			     HashMap<String, String> hmap = new HashMap<String, String>();

			      /*Adding elements to HashMap*/
			      hmap.put("name", rs.getString(1));
			      hmap.put("mobile", rs.getString(2));
			      hmap.put("email", rs.getString(3));
			      hmap.put("subject", rs.getString(4));
			      hmap.put("message", rs.getString(5));
			      arr.add(hmap);
			  	
			}
			
			return arr;
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		return arr;

}
}
