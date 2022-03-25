package com.javatpoint.dao;

import java.sql.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.LoanTransaction;
import com.jspcrud.connect.*;

public class LoanTransactionDao{
	
public static int save(LoanTransaction u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into loantransaction (date,loantype,loanamount,loaninterest,paidamount) values (?,?,?,?,?)");
		ps.setString(1,u.getDate());
		ps.setString(2,u.getLoantype());
		ps.setString(3,u.getLoanamount());
		ps.setString(4,u.getLoaninterest());
		ps.setString(5,u.getPaidamount());
		

		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(LoanTransaction u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update loantransaction set date=?,loantype=?,loanamount=?,loaninterest=?,paidamount=? where id=?");
		ps.setString(1,u.getDate());
		ps.setString(2,u.getLoantype());
		ps.setString(3,u.getLoanamount());
		ps.setString(4,u.getLoaninterest());
		ps.setString(5,u.getPaidamount());

		ps.setInt(8,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(LoanTransaction u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from loantransaction where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<LoanTransaction> getAllRecords(){
	List<LoanTransaction> list=new ArrayList<LoanTransaction>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from loantransaction");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			LoanTransaction u=new LoanTransaction();
			u.setId(rs.getInt("id"));
			u.setDate(rs.getString("date"));
			u.setLoantype(rs.getString("loantype"));
			u.setLoanamount(rs.getString("loanamount"));
			u.setLoaninterest(rs.getString("loaninterest"));
			u.setPaidamount(rs.getString("paidamount"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static LoanTransaction getRecordById(int id){
	LoanTransaction u=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from loantransaction where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new LoanTransaction();
			u.setId(rs.getInt("id"));
			u.setDate(rs.getString("date"));
			u.setLoantype(rs.getString("loantype"));
			u.setLoanamount(rs.getString("loanamount"));
			u.setLoaninterest(rs.getString("loaninterest"));
			u.setPaidamount(rs.getString("paidamount"));

		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
