package com.javatpoint.dao;

import java.sql.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.ReLoanTransaction;
import com.jspcrud.connect.*;

public class ReLoanTransactionDao{
	
public static int save(ReLoanTransaction u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into reloantransaction (date,loantype,loanamount,loaninterest,cashableamount,termofpayment,monthlypayment) values (?,?,?,?,?,?,?)");
		ps.setString(1,u.getDate());
		ps.setString(2,u.getLoantype());
		ps.setString(3,u.getLoanamount());
		ps.setString(4,u.getLoaninterest());
		ps.setString(5,u.getCashableamount());
		ps.setString(6,u.getTermofpayment());
		ps.setString(7,u.getMonthlypayment());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(ReLoanTransaction u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update reloantransaction set date=?,loantype=?,loanamount=?,loaninterest=?,cashableamount=?,termofpayment=?,monthlypayment=? where id=?");
		ps.setString(1,u.getDate());
		ps.setString(2,u.getLoantype());
		ps.setString(3,u.getLoanamount());
		ps.setString(4,u.getLoaninterest());
		ps.setString(5,u.getCashableamount());
		ps.setString(6,u.getTermofpayment());
		ps.setString(7,u.getMonthlypayment());
		ps.setInt(8,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(ReLoanTransaction u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from reloantransaction where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<ReLoanTransaction> getAllRecords(){
	List<ReLoanTransaction> list=new ArrayList<ReLoanTransaction>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from reloantransaction");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			ReLoanTransaction u=new ReLoanTransaction();
			u.setId(rs.getInt("id"));
			u.setDate(rs.getString("date"));
			u.setLoantype(rs.getString("loantype"));
			u.setLoanamount(rs.getString("loanamount"));
			u.setLoaninterest(rs.getString("loaninterest"));
			u.setCashableamount(rs.getString("cashableamount"));
			u.setTermofpayment(rs.getString("termofpayment"));
			u.setMonthlypayment(rs.getString("monthlypayment"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static ReLoanTransaction getRecordById(int id){
	ReLoanTransaction u=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from reloantransaction where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new ReLoanTransaction();
			u.setId(rs.getInt("id"));
			u.setDate(rs.getString("date"));
			u.setLoantype(rs.getString("loantype"));
			u.setLoanamount(rs.getString("loanamount"));
			u.setLoaninterest(rs.getString("loaninterest"));
			u.setCashableamount(rs.getString("cashableamount"));
			u.setTermofpayment(rs.getString("termofpayment"));
			u.setMonthlypayment(rs.getString("monthlypayment"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
