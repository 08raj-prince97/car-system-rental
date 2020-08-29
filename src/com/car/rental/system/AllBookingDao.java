package com.car.rental.system;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import com.mysql.jdbc.Connection;

public class AllBookingDao {
	String url = "jdbc:mysql://localhost:3306/car_rental_system";
	String uname = "root";
	String pass = "";
	String sql = "SELECT bookingdetails.id,userdetails.name,userdetails.email,userdetails.mobile,from_unixtime(bookingdetails.from_date),from_unixtime(bookingdetails.to_date),bookingdetails.pick_address,bookingdetails.drop_address FROM `bookingdetails` LEFT JOIN `userdetails` ON bookingdetails.user_id=userdetails.id";

	public ArrayList allBooking() {
		ArrayList al = new ArrayList();
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url, uname, pass);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {

				HashMap<String, String> hmap = new HashMap<String, String>();

				/* Adding elements to HashMap */
				hmap.put("id", rs.getString(1));
				hmap.put("name", rs.getString(2));
				hmap.put("email", rs.getString(3));
				hmap.put("mobile", rs.getString(4));
				hmap.put("from_date", rs.getString(5));
				hmap.put("to_date", rs.getString(6));
				hmap.put("pick_address", rs.getString(7));
				hmap.put("drop_address", rs.getString(8));
				al.add(hmap);

			}

			return al;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return al;
	}
}
