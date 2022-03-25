package com.javatpoint.dao;

import java.sql.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.ReLoanTransaction2;
import com.jspcrud.connect.*;

public class ReLoanTransactionDao2{
	
public static int save(ReLoanTransaction2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into reloantransaction2 (date,loantype,loanamount,loaninterest,cashableamount,termofpayment,monthlypayment) values (?,?,?,?,?,?,?)");
		ps.setString(1,uu.getDate());
		ps.setString(2,uu.getLoantype());
		ps.setString(3,uu.getLoanamount());
		ps.setString(4,uu.getLoaninterest());
		ps.setString(5,uu.getCashableamount());
		ps.setString(6,uu.getTermofpayment());
		ps.setString(7,uu.getMonthlypayment());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(ReLoanTransaction2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update reloantransaction2 set date=?,loantype=?,loanamount=?,loaninterest=?,cashableamount=?,termofpayment=?,monthlypayment=? where id=?");
		ps.setString(1,uu.getDate());
		ps.setString(2,uu.getLoantype());
		ps.setString(3,uu.getLoanamount());
		ps.setString(4,uu.getLoaninterest());
		ps.setString(5,uu.getCashableamount());
		ps.setString(6,uu.getTermofpayment());
		ps.setString(7,uu.getMonthlypayment());
		ps.setInt(8,uu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(ReLoanTransaction2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from reloantransaction2 where id=?");
		ps.setInt(1,uu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<ReLoanTransaction2> getAllRecords(){
	List<ReLoanTransaction2> list=new ArrayList<ReLoanTransaction2>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from reloantransaction2");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			ReLoanTransaction2 uu=new ReLoanTransaction2();
			uu.setId(rs.getInt("id"));
			uu.setDate(rs.getString("date"));
			uu.setLoantype(rs.getString("loantype"));
			uu.setLoanamount(rs.getString("loanamount"));
			uu.setLoaninterest(rs.getString("loaninterest"));
			uu.setCashableamount(rs.getString("cashableamount"));
			uu.setTermofpayment(rs.getString("termofpayment"));
			uu.setMonthlypayment(rs.getString("monthlypayment"));
			list.add(uu);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static ReLoanTransaction2 getRecordById(int id){
	ReLoanTransaction2 uu=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from reloantransaction2 where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			uu=new ReLoanTransaction2();
			uu.setId(rs.getInt("id"));
			uu.setDate(rs.getString("date"));
			uu.setLoantype(rs.getString("loantype"));
			uu.setLoanamount(rs.getString("loanamount"));
			uu.setLoaninterest(rs.getString("loaninterest"));
			uu.setCashableamount(rs.getString("cashableamount"));
			uu.setTermofpayment(rs.getString("termofpayment"));
			uu.setMonthlypayment(rs.getString("monthlypayment"));
		}
	}catch(Exception e){System.out.println(e);}
	return uu;
}
}
