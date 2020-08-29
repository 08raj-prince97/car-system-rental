package com.car.rental.system;

import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;

import com.mysql.jdbc.Connection;

public class DeleteDao {
	
	void deleteDao(String table, String key) {
	String url = "jdbc:mysql://localhost:3306/car_rental_system";
	String uname = "root";
	String pass = "";
	String sql = "DELETE FROM "+table+" WHERE id="+key;

	try {

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = (Connection) DriverManager.getConnection(url, uname, pass);
		PreparedStatement st = con.prepareStatement(sql);
		st.execute();
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
}
}
