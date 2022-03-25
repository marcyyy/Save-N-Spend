package com.javatpoint.dao;

import java.sql.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.PaymentTransaction2;
import com.jspcrud.connect.*;

public class PaymentTransactionDao2{
	
public static int save(PaymentTransaction2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into paymenttransaction2 (date,loantype,paymentamount,clientdetails) values (?,?,?,?)");
		ps.setString(1,uu.getDate());
		ps.setString(2,uu.getLoantype());
		ps.setString(3,uu.getPaymentamount());
		ps.setString(4,uu.getClientdetails());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(PaymentTransaction2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("update paymenttransaction2 set date=?,loantype=?,paymentamount=?,clientdetails=? where id=?");
		ps.setString(1,uu.getDate());
		ps.setString(2,uu.getLoantype());
		ps.setString(3,uu.getPaymentamount());
		ps.setString(4,uu.getClientdetails());
		ps.setInt(5,uu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(PaymentTransaction2 uu){
	int status=0;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from paymenttransaction2 where id=?");
		ps.setInt(1,uu.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<PaymentTransaction2> getAllRecords(){
	List<PaymentTransaction2> list=new ArrayList<PaymentTransaction2>();
	
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from paymenttransaction2");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
		PaymentTransaction2 uu=new PaymentTransaction2();
			uu.setId(rs.getInt("id"));
			uu.setDate(rs.getString("date"));
			uu.setLoantype(rs.getString("loantype"));
			uu.setPaymentamount(rs.getString("paymentamount"));
			uu.setClientdetails(rs.getString("clientdetails"));
			list.add(uu);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static PaymentTransaction2 getRecordById(int id){
	PaymentTransaction2 uu=null;
	try{
		Connection con=DBCon.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from paymenttransaction where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			uu=new PaymentTransaction2();
			uu.setId(rs.getInt("id"));
			uu.setDate(rs.getString("date"));
			uu.setLoantype(rs.getString("loantype"));
			uu.setPaymentamount(rs.getString("paymentamount"));
			uu.setClientdetails(rs.getString("clientdetails"));
		}
	}catch(Exception e){System.out.println(e);}
	return uu;
}
}
