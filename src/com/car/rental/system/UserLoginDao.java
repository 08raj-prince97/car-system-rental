package com.car.rental.system;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import com.mysql.jdbc.Connection;

public class UserLoginDao {
	String url = "jdbc:mysql://localhost:3306/car_rental_system";
	String uname = "root";
	String pass = "";
	String sql = "select name,type,id from userdetails where email=? and password=password(?)";
	// String sql = "select * from userdetails";

	public ArrayList<String> check(String email, String password) {
		String name = null;
		String type = null;
		String id = null;
		ArrayList<String> arr= new ArrayList<String>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url, uname, pass);
			PreparedStatement st = con.prepareStatement(sql);

			st.setString(1, email);
			st.setString(2, password);
			ResultSet rs = st.executeQuery();

			if (rs.next()) {

				name = rs.getString(1);
				type = rs.getString(2);
				id = rs.getString(3);
				
				if (name == null) {
					name = "error";
					arr.add(type);
					arr.add(name);
					arr.add(id);
					return arr;
				}
				arr.add(type);
				arr.add(name);
				arr.add(id);
				return arr;

			}
			arr.add(type);
			arr.add(name);
			arr.add(id);
			return arr;

		} catch (Exception e) {

			e.printStackTrace();
		}
		arr.add(type);
		arr.add(name);
		arr.add(id);
		return arr;

	}
}
