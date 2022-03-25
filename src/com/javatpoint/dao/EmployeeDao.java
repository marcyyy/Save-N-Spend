package com.javatpoint.dao;

import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.Employee;
import com.jspcrud.connect.*;

public class EmployeeDao{
	
public static int save(Employee u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into employee(firstname,middlename,lastname,address,contactnumber,email,password,birthdate,age,gender) values(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,u.getFirstname());
		ps.setString(2,u.getMiddlename());
		ps.setString(3,u.getLastname());
		ps.setString(4,u.getAddress());
		ps.setString(5,u.getContactnumber());
		ps.setString(6,u.getEmail());
		ps.setString(7,u.getPassword());
		ps.setString(8,u.getBirthdate());
		ps.setString(9,u.getAge());
		ps.setString(10,u.getGender());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(Employee u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update employee set firstname=?,middlename=?,lastname=?,address=?,contactnumber=?,email=?,password=?,birthdate=?,age=?,gender=? where id=?");
		ps.setString(1,u.getFirstname());
		ps.setString(2,u.getMiddlename());
		ps.setString(3,u.getLastname());
		ps.setString(4,u.getAddress());
		ps.setString(5,u.getContactnumber());
		ps.setString(6,u.getEmail());
		ps.setString(7,u.getPassword());
		ps.setString(8,u.getBirthdate());
		ps.setString(9,u.getAge());
		ps.setString(10,u.getGender());
		ps.setInt(11,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(Employee u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from employee where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<Employee> getAllRecords(){
	List<Employee> list=new ArrayList<Employee>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from employee");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Employee u=new Employee();
			u.setId(rs.getInt("id"));
			u.setFirstname(rs.getString("firstname"));
			u.setMiddlename(rs.getString("middlename"));
			u.setLastname(rs.getString("lastname"));
			u.setAddress(rs.getString("address"));
			u.setContactnumber(rs.getString("contactnumber"));
			u.setEmail(rs.getString("email"));
			u.setPassword(rs.getString("password"));
			u.setBirthdate(rs.getString("birthdate"));
			u.setAge(rs.getString("age"));
			u.setGender(rs.getString("gender"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static Employee getRecordById(int id){
	Employee u=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from employee where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new Employee();
			u.setId(rs.getInt("id"));
			u.setFirstname(rs.getString("firstname"));
			u.setMiddlename(rs.getString("middlename"));
			u.setLastname(rs.getString("lastname"));
			u.setAddress(rs.getString("address"));
			u.setContactnumber(rs.getString("contactnumber"));
			u.setEmail(rs.getString("email"));
			u.setPassword(rs.getString("password"));
			u.setBirthdate(rs.getString("birthdate"));
			u.setAge(rs.getString("age"));
			u.setGender(rs.getString("gender"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
