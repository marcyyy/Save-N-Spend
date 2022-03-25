package com.javatpoint.bean;

public class TransactionPayloan {
	private int id,loanamount,interestrate,paidamount,totalbalance,reloanamount,reinterestrate,totalloan,totalrate,repaidamount,totalpay;
	public int getRepaidamount() {
		return repaidamount;
	}
	public void setRepaidamount(int repaidamount) {
		this.repaidamount = repaidamount;
	}
	public int getTotalpay() {
		return totalpay;
	}
	public void setTotalpay(int totalpay) {
		this.totalpay = totalpay;
	}
	private String name,loantype,installmentdate,paydate;
	public int getTotalloan() {
		return totalloan;
	}
	public void setTotalloan(int totalloan) {
		this.totalloan = totalloan;
	}
	public int getTotalrate() {
		return totalrate;
	}
	public void setTotalrate(int totalrate) {
		this.totalrate = totalrate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getLoanamount() {
		return loanamount;
	}
	public void setLoanamount(int loanamount) {
		this.loanamount = loanamount;
	}
	public int getInterestrate() {
		return interestrate;
	}
	public void setInterestrate(int interestrate) {
		this.interestrate = interestrate;
	}
	public int getPaidamount() {
		return paidamount;
	}
	public void setPaidamount(int paidamount) {
		this.paidamount = paidamount;
	}
	public int getTotalbalance() {
		return totalbalance;
	}
	public void setTotalbalance(int totalbalance) {
		this.totalbalance = totalbalance;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLoantype() {
		return loantype;
	}
	public void setLoantype(String loantype) {
		this.loantype = loantype;
	}
	public String getInstallmentdate() {
		return installmentdate;
	}
	public void setInstallmentdate(String installmentdate) {
		this.installmentdate = installmentdate;
	}
	public String getPaydate() {
		return paydate;
	}
	public void setPaydate(String paydate) {
		this.paydate = paydate;
	}
	public int getReloanamount() {
		return reloanamount;
	}
	public void setReloanamount(int reloanamount) {
		this.reloanamount = reloanamount;
	}
	public int getReinterestrate() {
		return reinterestrate;
	}
	public void setReinterestrate(int reinterestrate) {
		this.reinterestrate = reinterestrate;
	}
	
}
