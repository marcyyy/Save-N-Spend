package com.javatpoint.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.Client;
import com.jspcrud.connect.*;

public class ClientDao{
	
public static int save(Client u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into client(firstname,middlename,lastname,email,password,contactnumber,birthdate,age,gender,civilstatus,address,occupation,companyname) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,u.getFirstname());
		ps.setString(2,u.getMiddlename());
		ps.setString(3,u.getLastname());
		ps.setString(4,u.getEmail());
		ps.setString(5,u.getPassword());
		ps.setString(6,u.getContactnumber());
		ps.setString(7,u.getBirthdate());
		ps.setString(8,u.getAge());
		ps.setString(9,u.getGender());
		ps.setString(10,u.getCivilstatus());
		ps.setString(11,u.getAddress());
		ps.setString(12,u.getOccupation());
		ps.setString(13,u.getCompanyname());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(Client u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update client set firstname=?,middlename=?,lastname=?,email=?,password=?,contactnumber=?,birthdate=?,age=?,gender=?,civilstatus=?,address=?,occupation=?,companyname=? where id=?");
		ps.setString(1,u.getFirstname());
		ps.setString(2,u.getMiddlename());
		ps.setString(3,u.getLastname());
		ps.setString(4,u.getEmail());
		ps.setString(5,u.getPassword());
		ps.setString(6,u.getContactnumber());
		ps.setString(7,u.getBirthdate());
		ps.setString(8,u.getAge());
		ps.setString(9,u.getGender());
		ps.setString(10,u.getCivilstatus());
		ps.setString(11,u.getAddress());
		ps.setString(12,u.getOccupation());
		ps.setString(13,u.getCompanyname());
		ps.setInt(14,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(Client u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from client where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<Client> getAllRecords(){
	List<Client> list=new ArrayList<Client>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from client");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Client u=new Client();
			u.setId(rs.getInt("id"));
			u.setFirstname(rs.getString("firstname"));
			u.setMiddlename(rs.getString("middlename"));
			u.setLastname(rs.getString("lastname"));
			u.setEmail(rs.getString("email"));
			u.setPassword(rs.getString("password"));
			u.setContactnumber(rs.getString("contactnumber"));
			u.setBirthdate(rs.getString("birthdate"));
			u.setAge(rs.getString("age"));
			u.setGender(rs.getString("gender"));
			u.setCivilstatus(rs.getString("civilstatus"));
			u.setAddress(rs.getString("address"));
			u.setOccupation(rs.getString("occupation"));
			u.setCompanyname(rs.getString("companyname"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static Client getRecordById(int id){
	Client u=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from client where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new Client();
			u.setFirstname(rs.getString("firstname"));
			u.setMiddlename(rs.getString("middlename"));
			u.setLastname(rs.getString("lastname"));
			u.setEmail(rs.getString("email"));
			u.setPassword(rs.getString("password"));
			u.setContactnumber(rs.getString("contactnumber"));
			u.setBirthdate(rs.getString("birthdate"));
			u.setAge(rs.getString("age"));
			u.setGender(rs.getString("gender"));
			u.setCivilstatus(rs.getString("civilstatus"));
			u.setAddress(rs.getString("address"));
			u.setOccupation(rs.getString("occupation"));
			u.setCompanyname(rs.getString("companyname"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
