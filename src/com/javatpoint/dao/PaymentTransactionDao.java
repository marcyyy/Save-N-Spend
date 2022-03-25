package com.javatpoint.dao;

import java.sql.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.PaymentTransaction;
import com.jspcrud.connect.*;

public class PaymentTransactionDao{
	
public static int save(PaymentTransaction u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into paymenttransaction (date,loantype,paymentamount,clientdetails) values (?,?,?,?)");
		ps.setString(1,u.getDate());
		ps.setString(2,u.getLoantype());
		ps.setString(3,u.getPaymentamount());
		ps.setString(4,u.getClientdetails());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(PaymentTransaction u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update paymenttransaction set date=?,loantype=?,paymentamount=?,clientdetails=? where id=?");
		ps.setString(1,u.getDate());
		ps.setString(2,u.getLoantype());
		ps.setString(3,u.getPaymentamount());
		ps.setString(4,u.getClientdetails());
		ps.setInt(5,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(PaymentTransaction u){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from paymenttransaction where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<PaymentTransaction> getAllRecords(){
	List<PaymentTransaction> list=new ArrayList<PaymentTransaction>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from paymenttransaction");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
		PaymentTransaction u=new PaymentTransaction();
			u.setId(rs.getInt("id"));
			u.setDate(rs.getString("date"));
			u.setLoantype(rs.getString("loantype"));
			u.setPaymentamount(rs.getString("paymentamount"));
			u.setClientdetails(rs.getString("clientdetails"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static PaymentTransaction getRecordById(int id){
	PaymentTransaction u=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from paymenttransaction where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new PaymentTransaction();
			u.setId(rs.getInt("id"));
			u.setDate(rs.getString("date"));
			u.setLoantype(rs.getString("loantype"));
			u.setPaymentamount(rs.getString("paymentamount"));
			u.setClientdetails(rs.getString("clientdetails"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
