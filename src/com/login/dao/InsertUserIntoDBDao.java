package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.login.model.UserModel;

public class InsertUserIntoDBDao {
	
	
	
	
	final String url = "jdbc:mysql://localhost:3306/touristguidedb";
	final String username = "root";
	final String pass = "toor";
	
	
	final String query = "insert into signup_data" + " (Email,Password,Name) VALUES " + "(? , ? , ? );";
	
	
	public boolean insertUserDetails(UserModel user) {
		
		Connection conn = null;
		PreparedStatement st = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,pass);
			st = conn.prepareStatement(query);
			
			st.setString(1,user.getEmail());
			st.setString(2, user.getPassword());
			st.setString(3,user.getName());
			
//			st.setString(1, email);
//			st.setString(2, password);
//			st.setString(3, name);
			
			int val = st.executeUpdate();
			if(val>0) {
				return true;
			}
			
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
