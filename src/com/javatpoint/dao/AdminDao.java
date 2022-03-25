package com.javatpoint.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.Admin;
import com.jspcrud.connect.*;

public class AdminDao{
	
public static int save(Admin u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into admin(email,password) values(?,?)");
		ps.setString(1,u.getEmail());
		ps.setString(2,u.getPassword());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(Admin u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update admin set email=?,password=? where id=?");
		ps.setString(1,u.getEmail());
		ps.setString(2,u.getPassword());
		ps.setInt(3,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(Admin u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from admin where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<Admin> getAllRecords(){
	List<Admin> list=new ArrayList<Admin>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from admin");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Admin u=new Admin();
			u.setId(rs.getInt("id"));
			u.setEmail(rs.getString("email"));
			u.setPassword(rs.getString("password"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static Admin getRecordById(int id){
	Admin u=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from admin where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new Admin();
			u.setId(rs.getInt("id"));
			u.setEmail(rs.getString("email"));
			u.setPassword(rs.getString("password"));

		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
