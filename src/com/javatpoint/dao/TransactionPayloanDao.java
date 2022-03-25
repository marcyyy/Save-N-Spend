package com.javatpoint.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.TransactionPayloan;
import com.jspcrud.connect.*;

public class TransactionPayloanDao{
	
public static int save(TransactionPayloan uuu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into transactionpay (name,loantype,loanamount,interestrate,installmentdate,paidamount,paydate,totalbalance,reloanamount,reinterestrate,totalloan,totalrate,repaidamount,totalpay) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,uuu.getName());
		ps.setString(2,uuu.getLoantype());
		ps.setInt(3,uuu.getLoanamount());
		ps.setInt(4,uuu.getInterestrate());
		ps.setString(5,uuu.getInstallmentdate());
		ps.setInt(6,uuu.getPaidamount());
		ps.setString(7,uuu.getPaydate());
		ps.setInt(8,uuu.getTotalbalance());
		ps.setInt(9,uuu.getReloanamount());
		ps.setInt(10,uuu.getReinterestrate());
		ps.setInt(11,uuu.getTotalloan());
		ps.setInt(12,uuu.getTotalrate());
		ps.setInt(13,uuu.getRepaidamount());
		ps.setInt(14,uuu.getTotalpay());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(TransactionPayloan uuu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update transactionpay set name=?,loantype=?,loanamount=?,interestrate=?,installmentdate=?,paidamount=?,paydate=?,totalbalance=?,reloanamount=?,reinterestrate=?,totalloan=?,totalrate=?,repaidamount=?,totalpay=?  where id=?");
		ps.setString(1,uuu.getName());
		ps.setString(2,uuu.getLoantype());
		ps.setInt(3,uuu.getLoanamount());
		ps.setInt(4,uuu.getInterestrate());
		ps.setString(5,uuu.getInstallmentdate());
		ps.setInt(6,uuu.getPaidamount());
		ps.setString(7,uuu.getPaydate());
		ps.setInt(8,uuu.getTotalbalance());
		ps.setInt(9,uuu.getReloanamount());
		ps.setInt(10,uuu.getReinterestrate());
		ps.setInt(11,uuu.getTotalloan());
		ps.setInt(12,uuu.getTotalrate());
		ps.setInt(13,uuu.getRepaidamount());
		ps.setInt(14,uuu.getTotalpay());
		ps.setInt(15,uuu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(TransactionPayloan uuu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from transactionpay where id=?");
		ps.setInt(1,uuu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static List<TransactionPayloan> getAllRecords(){
	List<TransactionPayloan> list=new ArrayList<TransactionPayloan>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from transactionpay");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			TransactionPayloan uuu=new TransactionPayloan();
			uuu.setId(rs.getInt("id"));
			uuu.setName(rs.getString("name"));
			uuu.setLoantype(rs.getString("loantype"));
			uuu.setLoanamount(rs.getInt("loanamount"));
			uuu.setInterestrate(rs.getInt("interestrate"));
			uuu.setInstallmentdate(rs.getString("installmentdate"));
			uuu.setPaidamount(rs.getInt("paidamount"));
			uuu.setPaydate(rs.getString("paydate"));
			uuu.setTotalbalance(rs.getInt("totalbalance"));
			uuu.setReloanamount(rs.getInt("reloanamount"));
			uuu.setReinterestrate(rs.getInt("reinterestrate"));
			uuu.setTotalloan(rs.getInt("totalloan"));
			uuu.setTotalrate(rs.getInt("totalrate"));
			uuu.setRepaidamount(rs.getInt("repaidamount"));
			uuu.setTotalpay(rs.getInt("totalpay"));
			list.add(uuu);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static TransactionPayloan getRecordById(int id){
	TransactionPayloan uuu=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from transactionpay where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			uuu=new TransactionPayloan();
			uuu.setId(rs.getInt("id"));
			uuu.setName(rs.getString("name"));
			uuu.setLoantype(rs.getString("loantype"));
			uuu.setLoanamount(rs.getInt("loanamount"));
			uuu.setInterestrate(rs.getInt("interestrate"));
			uuu.setInstallmentdate(rs.getString("installmentdate"));
			uuu.setPaidamount(rs.getInt("paidamount"));
			uuu.setPaydate(rs.getString("password"));
			uuu.setTotalbalance(rs.getInt("totalbalance"));
			uuu.setReloanamount(rs.getInt("reloanamount"));
			uuu.setReinterestrate(rs.getInt("reinterestrate"));
			uuu.setTotalloan(rs.getInt("totalloan"));
			uuu.setTotalrate(rs.getInt("totalrate"));
			uuu.setRepaidamount(rs.getInt("repaidamount"));
			uuu.setTotalpay(rs.getInt("totalpay"));
		}
	}catch(Exception e){System.out.println(e);}
	return uuu;
}

public static int add (TransactionPayloan uuu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement ("insert into transactionpay(loanamount,interestrate) values (?,?)");
		ps.setInt(1,uuu.getLoanamount());
		ps.setInt(2,uuu.getInterestrate());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static int readd (TransactionPayloan uuu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement ("insert into transactionpay (loanamount,interestrate,reloanamount,reinterestrate) values (?,?,?,?)");
		ps.setInt(1,uuu.getLoanamount());
		ps.setInt(2,uuu.getInterestrate());
		ps.setInt(3,uuu.getReloanamount());
		ps.setInt(4,uuu.getReinterestrate());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

}
