package com.javatpoint.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.TransactionNotif;
import com.jspcrud.connect.*;


public class TransactionNotifDao {
	
public static int save(TransactionNotif u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into transactionnotif (name,loantype,loanamount,interestrate,installmentdate,paidamount,paydate,totalbalance,reloanamount,reinterestrate,totalloan,totalrate,repaidamount,totalpay) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
public static int update(TransactionNotif u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update transactionnotif set name=?,loantype=?,loanamount=?,interestrate=?,installmentdate=?,paidamount=?,paydate=?,totalbalance=?,reloanamount=?,reinterestrate=?,totalloan=?,totalrate=?,repaidamount=?,totalpay=?  where id=?");
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
public static int delete(TransactionNotif u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from transactionnotif where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static List<TransactionNotif> getAllRecords(){
	List<TransactionNotif> list=new ArrayList<TransactionNotif>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from transactionnotif");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			TransactionNotif u=new TransactionNotif();
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
public static TransactionNotif getRecordById(int id){
	TransactionNotif u=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from transactionnotif where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new TransactionNotif();
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

}
