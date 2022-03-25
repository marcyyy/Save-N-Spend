package com.javatpoint.dao;

import java.sql.*;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.Client2;
import com.jspcrud.connect.*;

public class ClientDao2{
	
public static int save(Client2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into client2(firstname,middlename,lastname,email,password,contactnumber,birthdate,age,gender,civilstatus,address,occupation,companyname) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,uu.getFirstname());
		ps.setString(2,uu.getMiddlename());
		ps.setString(3,uu.getLastname());
		ps.setString(4,uu.getEmail());
		ps.setString(5,uu.getPassword());
		ps.setString(6,uu.getContactnumber());
		ps.setString(7,uu.getBirthdate());
		ps.setString(8,uu.getAge());
		ps.setString(9,uu.getGender());
		ps.setString(10,uu.getCivilstatus());
		ps.setString(11,uu.getAddress());
		ps.setString(12,uu.getOccupation());
		ps.setString(13,uu.getCompanyname());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(Client2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update client2 set firstname=?,middlename=?,lastname=?,email=?,password=?,contactnumber=?,birthdate=?,age=?,gender=?,civilstatus=?,address=?,occupation=?,companyname=? where id=?");
		ps.setString(1,uu.getFirstname());
		ps.setString(2,uu.getMiddlename());
		ps.setString(3,uu.getLastname());
		ps.setString(4,uu.getEmail());
		ps.setString(5,uu.getPassword());
		ps.setString(6,uu.getContactnumber());
		ps.setString(7,uu.getBirthdate());
		ps.setString(8,uu.getAge());
		ps.setString(9,uu.getGender());
		ps.setString(10,uu.getCivilstatus());
		ps.setString(11,uu.getAddress());
		ps.setString(12,uu.getOccupation());
		ps.setString(13,uu.getCompanyname());
		ps.setInt(14,uu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(Client2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from client2 where id=?");
		ps.setInt(1,uu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<Client2> getAllRecords(){
	List<Client2> list=new ArrayList<Client2>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from client2");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Client2 uu=new Client2();
			uu.setId(rs.getInt("id"));
			uu.setFirstname(rs.getString("firstname"));
			uu.setMiddlename(rs.getString("middlename"));
			uu.setLastname(rs.getString("lastname"));
			uu.setEmail(rs.getString("email"));
			uu.setPassword(rs.getString("password"));
			uu.setContactnumber(rs.getString("contactnumber"));
			uu.setBirthdate(rs.getString("birthdate"));
			uu.setAge(rs.getString("age"));
			uu.setGender(rs.getString("gender"));
			uu.setCivilstatus(rs.getString("civilstatus"));
			uu.setAddress(rs.getString("address"));
			uu.setOccupation(rs.getString("occupation"));
			uu.setCompanyname(rs.getString("companyname"));
			list.add(uu);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static Client2 getRecordById(int id){
	Client2 uu=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from client2 where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			uu=new Client2();
			uu.setFirstname(rs.getString("firstname"));
			uu.setMiddlename(rs.getString("middlename"));
			uu.setLastname(rs.getString("lastname"));
			uu.setEmail(rs.getString("email"));
			uu.setPassword(rs.getString("password"));
			uu.setContactnumber(rs.getString("contactnumber"));
			uu.setBirthdate(rs.getString("birthdate"));
			uu.setAge(rs.getString("age"));
			uu.setGender(rs.getString("gender"));
			uu.setCivilstatus(rs.getString("civilstatus"));
			uu.setAddress(rs.getString("address"));
			uu.setOccupation(rs.getString("occupation"));
			uu.setCompanyname(rs.getString("companyname"));
		}
	}catch(Exception e){System.out.println(e);}
	return uu;
}
}
