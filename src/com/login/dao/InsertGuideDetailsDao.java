package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.login.model.GuideProfile;

public class InsertGuideDetailsDao {
	
	final String url = "jdbc:mysql://localhost:3306/touristguidedb";
	final String username = "root";
	final String pass = "toor";
	
	
	final String query = "insert into guidedetails" + " (Name,Email,Image,Contact_No,City,Interests,Visiting_Places,About_Tour,Fee,Languages)"
			+ " VALUES " + "(? , ? , ? ,? , ? , ? ,? , ? , ? , ? );";
	
	
	public boolean insertGuideDetails(GuideProfile guide) {
		
		Connection conn = null;
		PreparedStatement st = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,pass);
			st = conn.prepareStatement(query);
			
			st.setString(1,guide.getName());
			st.setString(2, guide.getEmail());
			st.setString(3,guide.getImage());
			st.setString(4,guide.getPhone());
			st.setString(5, guide.getCity());
			st.setString(6,guide.getHobby());
			st.setString(7,guide.getPlaces());
			st.setString(8, guide.getAbout_tour());
			st.setInt(9,guide.getFee());
			st.setString(10,guide.getLanguages());
			

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
