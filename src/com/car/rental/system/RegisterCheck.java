
package com.car.rental.system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class RegisterCheck {
	
	String url ="jdbc:mysql://localhost:3306/car_rental_system";
	String uname ="root";
	String pass ="";
	String sql ="select * from userdetails where email=?";
	
	public boolean check(String email) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url,uname,pass);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, email);
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
				return true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
