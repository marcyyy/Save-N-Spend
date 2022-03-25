package com.javatpoint.bean;

public class ReLoanTransaction {
private int id;
private String date,loantype,loanamount,loaninterest,cashableamount,termofpayment,monthlypayment;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getDate() {
	return date;
}
public String getMonthlypayment() {
	return monthlypayment;
}
public void setMonthlypayment(String monthlypayment) {
	this.monthlypayment = monthlypayment;
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
public String getCashableamount() {
	return cashableamount;
}
public void setCashableamount(String cashableamount) {
	this.cashableamount = cashableamount;
}
public String getTermofpayment() {
	return termofpayment;
}
public void setTermofpayment(String termofpayment) {
	this.termofpayment = termofpayment;
}

}
