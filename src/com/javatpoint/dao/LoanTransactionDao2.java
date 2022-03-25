package com.javatpoint.dao;

import java.sql.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.LoanTransaction2;
import com.jspcrud.connect.*;

public class LoanTransactionDao2{
	
public static int save(LoanTransaction2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into loantransaction2 (date,loantype,loanamount,loaninterest,cashableamount,termofpayment,monthlypayment) values (?,?,?,?,?,?,?)");
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
public static int update(LoanTransaction2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update loantransaction2 set date=?,loantype=?,loanamount=?,loaninterest=?,cashableamount=?,termofpayment=?,monthlypayment=? where id=?");
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
public static int delete(LoanTransaction2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from loantransaction2 where id=?");
		ps.setInt(1,uu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<LoanTransaction2> getAllRecords(){
	List<LoanTransaction2> list=new ArrayList<LoanTransaction2>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from loantransaction2");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			LoanTransaction2 uu=new LoanTransaction2();
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
public static LoanTransaction2 getRecordById(int id){
	LoanTransaction2 uu=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from loantransaction2 where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			uu=new LoanTransaction2();
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
