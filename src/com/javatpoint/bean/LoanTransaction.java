package com.javatpoint.bean;

public class LoanTransaction {
private int id;
private String date,loantype,loanamount,loaninterest,paidamount;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getDate() {
	return date;
}

public void setDate(String date) {
	this.date = date;
}
public String getLoantype() {
	return loantype;
}
public void setLoantype(String loantype) {
	this.loantype = loantype;
}
public String getLoanamount() {
	return loanamount;
}
public void setLoanamount(String loanamount) {
	this.loanamount = loanamount;
}
public String getLoaninterest() {
	return loaninterest;
}
public void setLoaninterest(String loaninterest) {
	this.loaninterest = loaninterest;
}
public String getPaidamount() {
	return paidamount;
}
public void setPaidamount(String paidamount) {
	this.paidamount = paidamount;
}


}
