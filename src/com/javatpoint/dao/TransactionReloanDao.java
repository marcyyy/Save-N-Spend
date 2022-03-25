package com.javatpoint.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.TransactionReloan;
import com.jspcrud.connect.*;

public class TransactionReloanDao{
	
public static int save(TransactionReloan uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into transactionloan2 (name,loantype,loanamount,interestrate,installmentdate,paidamount,paydate,totalbalance,reloanamount,reinterestrate,totalloan,totalrate,repaidamount,totalpay) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,uu.getName());
		ps.setString(2,uu.getLoantype());
		ps.setInt(3,uu.getLoanamount());
		ps.setInt(4,uu.getInterestrate());
		ps.setString(5,uu.getInstallmentdate());
		ps.setInt(6,uu.getPaidamount());
		ps.setString(7,uu.getPaydate());
		ps.setInt(8,uu.getTotalbalance());
		ps.setInt(9,uu.getReloanamount());
		ps.setInt(10,uu.getReinterestrate());
		ps.setInt(11,uu.getTotalloan());
		ps.setInt(12,uu.getTotalrate());
		ps.setInt(13,uu.getRepaidamount());
		ps.setInt(14,uu.getTotalpay());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(TransactionReloan uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update transactionloan2 set name=?,loantype=?,loanamount=?,interestrate=?,installmentdate=?,paidamount=?,paydate=?,totalbalance=?,reloanamount=?,reinterestrate=?,totalloan=?,totalrate=?,repaidamount=?,totalpay=?  where id=?");
		ps.setString(1,uu.getName());
		ps.setString(2,uu.getLoantype());
		ps.setInt(3,uu.getLoanamount());
		ps.setInt(4,uu.getInterestrate());
		ps.setString(5,uu.getInstallmentdate());
		ps.setInt(6,uu.getPaidamount());
		ps.setString(7,uu.getPaydate());
		ps.setInt(8,uu.getTotalbalance());
		ps.setInt(9,uu.getReloanamount());
		ps.setInt(10,uu.getReinterestrate());
		ps.setInt(11,uu.getTotalloan());
		ps.setInt(12,uu.getTotalrate());
		ps.setInt(13,uu.getRepaidamount());
		ps.setInt(14,uu.getTotalpay());
		ps.setInt(15,uu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(TransactionReloan uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from transactionloan2 where id=?");
		ps.setInt(1,uu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static List<TransactionReloan> getAllRecords(){
	List<TransactionReloan> list=new ArrayList<TransactionReloan>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from transactionloan2");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			TransactionReloan uu=new TransactionReloan();
			uu.setId(rs.getInt("id"));
			uu.setName(rs.getString("name"));
			uu.setLoantype(rs.getString("loantype"));
			uu.setLoanamount(rs.getInt("loanamount"));
			uu.setInterestrate(rs.getInt("interestrate"));
			uu.setInstallmentdate(rs.getString("installmentdate"));
			uu.setPaidamount(rs.getInt("paidamount"));
			uu.setPaydate(rs.getString("paydate"));
			uu.setTotalbalance(rs.getInt("totalbalance"));
			uu.setReloanamount(rs.getInt("reloanamount"));
			uu.setReinterestrate(rs.getInt("reinterestrate"));
			uu.setTotalloan(rs.getInt("totalloan"));
			uu.setTotalrate(rs.getInt("totalrate"));
			uu.setRepaidamount(rs.getInt("repaidamount"));
			uu.setTotalpay(rs.getInt("totalpay"));
			list.add(uu);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static TransactionReloan getRecordById(int id){
	TransactionReloan uu=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from transactionloan2 where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			uu=new TransactionReloan();
			uu.setId(rs.getInt("id"));
			uu.setName(rs.getString("name"));
			uu.setLoantype(rs.getString("loantype"));
			uu.setLoanamount(rs.getInt("loanamount"));
			uu.setInterestrate(rs.getInt("interestrate"));
			uu.setInstallmentdate(rs.getString("installmentdate"));
			uu.setPaidamount(rs.getInt("paidamount"));
			uu.setPaydate(rs.getString("password"));
			uu.setTotalbalance(rs.getInt("totalbalance"));
			uu.setReloanamount(rs.getInt("reloanamount"));
			uu.setReinterestrate(rs.getInt("reinterestrate"));
			uu.setTotalloan(rs.getInt("totalloan"));
			uu.setTotalrate(rs.getInt("totalrate"));
			uu.setRepaidamount(rs.getInt("repaidamount"));
			uu.setTotalpay(rs.getInt("totalpay"));
		}
	}catch(Exception e){System.out.println(e);}
	return uu;
}

public static int add (TransactionReloan uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement ("insert into transactionloan2 (loanamount,interestrate) values (?,?)");
		ps.setInt(1,uu.getLoanamount());
		ps.setInt(2,uu.getInterestrate());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static int readd (TransactionReloan uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement ("insert into transactionloan2 (loanamount,interestrate,reloanamount,reinterestrate) values (?,?,?,?)");
		ps.setInt(1,uu.getLoanamount());
		ps.setInt(2,uu.getInterestrate());
		ps.setInt(3,uu.getReloanamount());
		ps.setInt(4,uu.getReinterestrate());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

}
