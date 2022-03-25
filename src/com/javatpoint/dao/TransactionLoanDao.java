package com.javatpoint.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.TransactionLoan;
import com.jspcrud.connect.*;

public class TransactionLoanDao{
	
public static int save(TransactionLoan u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into transactionloan (name,loantype,loanamount,interestrate,installmentdate,paidamount,paydate,totalbalance,reloanamount,reinterestrate,totalloan,totalrate,repaidamount,totalpay) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,u.getName());
		ps.setString(2,u.getLoantype());
		ps.setInt(3,u.getLoanamount());
		ps.setInt(4,u.getInterestrate());
		ps.setString(5,u.getInstallmentdate());
		ps.setInt(6,u.getPaidamount());
		ps.setString(7,u.getPaydate());
		ps.setInt(8,u.getTotalbalance());
		ps.setInt(9,u.getReloanamount());
		ps.setInt(10,u.getReinterestrate());
		ps.setInt(11,u.getTotalloan());
		ps.setInt(12,u.getTotalrate());
		ps.setInt(13,u.getRepaidamount());
		ps.setInt(14,u.getTotalpay());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(TransactionLoan u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update transactionloan set name=?,loantype=?,loanamount=?,interestrate=?,installmentdate=?,paidamount=?,paydate=?,totalbalance=?,reloanamount=?,reinterestrate=?,totalloan=?,totalrate=?,repaidamount=?,totalpay=?  where id=?");
		ps.setString(1,u.getName());
		ps.setString(2,u.getLoantype());
		ps.setInt(3,u.getLoanamount());
		ps.setInt(4,u.getInterestrate());
		ps.setString(5,u.getInstallmentdate());
		ps.setInt(6,u.getPaidamount());
		ps.setString(7,u.getPaydate());
		ps.setInt(8,u.getTotalbalance());
		ps.setInt(9,u.getReloanamount());
		ps.setInt(10,u.getReinterestrate());
		ps.setInt(11,u.getTotalloan());
		ps.setInt(12,u.getTotalrate());
		ps.setInt(13,u.getRepaidamount());
		ps.setInt(14,u.getTotalpay());
		ps.setInt(15,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(TransactionLoan u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from transactionloan where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static List<TransactionLoan> getAllRecords(){
	List<TransactionLoan> list=new ArrayList<TransactionLoan>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from transactionloan");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			TransactionLoan u=new TransactionLoan();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setLoantype(rs.getString("loantype"));
			u.setLoanamount(rs.getInt("loanamount"));
			u.setInterestrate(rs.getInt("interestrate"));
			u.setInstallmentdate(rs.getString("installmentdate"));
			u.setPaidamount(rs.getInt("paidamount"));
			u.setPaydate(rs.getString("paydate"));
			u.setTotalbalance(rs.getInt("totalbalance"));
			u.setReloanamount(rs.getInt("reloanamount"));
			u.setReinterestrate(rs.getInt("reinterestrate"));
			u.setTotalloan(rs.getInt("totalloan"));
			u.setTotalrate(rs.getInt("totalrate"));
			u.setRepaidamount(rs.getInt("repaidamount"));
			u.setTotalpay(rs.getInt("totalpay"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static TransactionLoan getRecordById(int id){
	TransactionLoan u=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from transactionloan where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new TransactionLoan();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setLoantype(rs.getString("loantype"));
			u.setLoanamount(rs.getInt("loanamount"));
			u.setInterestrate(rs.getInt("interestrate"));
			u.setInstallmentdate(rs.getString("installmentdate"));
			u.setPaidamount(rs.getInt("paidamount"));
			u.setPaydate(rs.getString("password"));
			u.setTotalbalance(rs.getInt("totalbalance"));
			u.setReloanamount(rs.getInt("reloanamount"));
			u.setReinterestrate(rs.getInt("reinterestrate"));
			u.setTotalloan(rs.getInt("totalloan"));
			u.setTotalrate(rs.getInt("totalrate"));
			u.setRepaidamount(rs.getInt("repaidamount"));
			u.setTotalpay(rs.getInt("totalpay"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}

public static int add (TransactionLoan u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement ("insert into transactionloan (loanamount,interestrate,totalbalance) values (?,?,?)");
		ps.setInt(1,u.getLoanamount());
		ps.setInt(2,u.getInterestrate());
		ps.setInt(3,u.getTotalbalance());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static int readd (TransactionLoan u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement ("insert into transactionloan (loanamount,interestrate,reloanamount,reinterestrate) values (?,?,?,?)");
		ps.setInt(1,u.getLoanamount());
		ps.setInt(2,u.getInterestrate());
		ps.setInt(3,u.getReloanamount());
		ps.setInt(4,u.getReinterestrate());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

}
