package com.javatpoint.dao;

import java.sql.*;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.User2;
import com.jspcrud.connect.*;

public class UserDao2{
	
public static int save(User2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into user2(firstname,middlename,lastname,address,contactnumber,email,password,birthdate,age,gender) values(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,uu.getFirstname());
		ps.setString(2,uu.getMiddlename());
		ps.setString(3,uu.getLastname());
		ps.setString(4,uu.getAddress());
		ps.setString(5,uu.getContactnumber());
		ps.setString(6,uu.getEmail());
		ps.setString(7,uu.getPassword());
		ps.setString(8,uu.getBirthdate());
		ps.setString(9,uu.getAge());
		ps.setString(10,uu.getGender());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(User2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update user2 set firstname=?,middlename=?,lastname=?,address=?,contactnumber=?,email=?,password=?,birthdate=?,age=?,gender=? where id=?");
		ps.setString(1,uu.getFirstname());
		ps.setString(2,uu.getMiddlename());
		ps.setString(3,uu.getLastname());
		ps.setString(4,uu.getAddress());
		ps.setString(5,uu.getContactnumber());
		ps.setString(6,uu.getEmail());
		ps.setString(7,uu.getPassword());
		ps.setString(8,uu.getBirthdate());
		ps.setString(9,uu.getAge());
		ps.setString(10,uu.getGender());
		ps.setInt(11,uu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(User2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from user2 where id=?");
		ps.setInt(1,uu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<User2> getAllRecords(){
	List<User2> list2=new ArrayList<User2>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from user2");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User2 uu=new User2();
			uu.setId(rs.getInt("id"));
			uu.setFirstname(rs.getString("firstname"));
			uu.setMiddlename(rs.getString("middlename"));
			uu.setLastname(rs.getString("lastname"));
			uu.setAddress(rs.getString("address"));
			uu.setContactnumber(rs.getString("contactnumber"));
			uu.setEmail(rs.getString("email"));
			uu.setPassword(rs.getString("password"));
			uu.setBirthdate(rs.getString("birthdate"));
			uu.setAge(rs.getString("age"));
			uu.setGender(rs.getString("gender"));
			list2.add(uu);
		}
	}catch(Exception e){System.out.println(e);}
	return list2;
}
public static User2 getRecordById(int id){
	User2 uu=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from user2 where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			uu=new User2();
			uu.setId(rs.getInt("id"));
			uu.setFirstname(rs.getString("firstname"));
			uu.setMiddlename(rs.getString("middlename"));
			uu.setLastname(rs.getString("lastname"));
			uu.setAddress(rs.getString("address"));
			uu.setContactnumber(rs.getString("contactnumber"));
			uu.setEmail(rs.getString("email"));
			uu.setPassword(rs.getString("password"));
			uu.setBirthdate(rs.getString("birthdate"));
			uu.setAge(rs.getString("age"));
			uu.setGender(rs.getString("gender"));
		}
	}catch(Exception e){System.out.println(e);}
	return uu;
}
}
