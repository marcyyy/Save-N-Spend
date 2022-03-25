package com.javatpoint.dao;

import java.sql.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.RequestForm;
import com.jspcrud.connect.*;

public class RequestFormDao{
	
public static int save(RequestForm uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into requestform (id,date,loantype,loanamount,loaninterest,cashableamount,termofpayment,monthlypayment,request) values (?,?,?,?,?,?,?,?,?"
				+ ")");
		ps.setInt(1,uu.getId());
		ps.setString(2,uu.getDate());
		ps.setString(3,uu.getLoantype());
		ps.setString(4,uu.getLoanamount());
		ps.setString(5,uu.getLoaninterest());
		ps.setString(6,uu.getCashableamount());
		ps.setString(7,uu.getTermofpayment());
		ps.setString(8,uu.getMonthlypayment());
		ps.setString(9,uu.getRequest());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(RequestForm uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update requestform set date=?,loantype=?,loanamount=?,loaninterest=?,cashableamount=?,termofpayment=?,monthlypayment=?,request=? where id=?");
		ps.setString(1,uu.getDate());
		ps.setString(2,uu.getLoantype());
		ps.setString(3,uu.getLoanamount());
		ps.setString(4,uu.getLoaninterest());
		ps.setString(5,uu.getCashableamount());
		ps.setString(6,uu.getTermofpayment());
		ps.setString(7,uu.getMonthlypayment());
		ps.setString(8,uu.getRequest());
		ps.setInt(9,uu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(RequestForm uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from requestform where id=?");
		ps.setInt(1,uu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<RequestForm> getAllRecords(){
	List<RequestForm> list=new ArrayList<RequestForm>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from requestform");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			RequestForm uu=new RequestForm();
			uu.setId(rs.getInt("id"));
			uu.setDate(rs.getString("date"));
			uu.setLoantype(rs.getString("loantype"));
			uu.setLoanamount(rs.getString("loanamount"));
			uu.setLoaninterest(rs.getString("loaninterest"));
			uu.setCashableamount(rs.getString("cashableamount"));
			uu.setTermofpayment(rs.getString("termofpayment"));
			uu.setMonthlypayment(rs.getString("monthlypayment"));
			uu.setRequest(rs.getString("request"));
			list.add(uu);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static RequestForm getRecordById(int id){
	RequestForm uu=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from requestform where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			uu=new RequestForm();
			uu.setId(rs.getInt("id"));
			uu.setDate(rs.getString("date"));
			uu.setLoantype(rs.getString("loantype"));
			uu.setLoanamount(rs.getString("loanamount"));
			uu.setLoaninterest(rs.getString("loaninterest"));
			uu.setCashableamount(rs.getString("cashableamount"));
			uu.setTermofpayment(rs.getString("termofpayment"));
			uu.setMonthlypayment(rs.getString("monthlypayment"));
			uu.setRequest(rs.getString("request"));
		}
	}catch(Exception e){System.out.println(e);}
	return uu;
}
}
