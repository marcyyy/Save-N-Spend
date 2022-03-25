package com.javatpoint.bean;

public class PaymentTransaction {
private int id;
private String date,loantype,paymentamount,clientdetails;
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
public String getPaymentamount() {
	return paymentamount;
}
public void setPaymentamount(String paymentamount) {
	this.paymentamount = paymentamount;
}
public String getClientdetails() {
	return clientdetails;
}
public void setClientdetails(String clientdetails) {
	this.clientdetails = clientdetails;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}


}
