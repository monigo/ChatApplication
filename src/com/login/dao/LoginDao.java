package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.login.model.UserModel;

public class LoginDao {
	
	final String query = "Select * from signup_data where Email = ? and Password = ?";
	final String url = "jdbc:mysql://localhost:3306/touristguidedb";
	final String username = "root";
	final String pass = "toor";
	
	public boolean checkLoginCredentials(UserModel user) {
		
		Connection conn = null;
		PreparedStatement st = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,pass);
			st = conn.prepareStatement(query);
			st.setString(1,user.getEmail());
			st.setString(2, user.getPassword());
//			st.setString(1, email);
//			st.setString(2, password);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return true;
			}
			rs.close();
            st.close();
            conn.close();
		}
		catch(SQLException se){
            se.printStackTrace();
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{
                if(st!=null)
                    st.close();
            }catch(SQLException se2){
            }
            try{
                if(conn!=null)
                    conn.close();
            }catch(SQLException se){
                se.printStackTrace();
            }
        }
		
		return false;
	}
}
