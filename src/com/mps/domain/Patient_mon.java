package com.mps.domain;
/**
 * 
 * @author Administrator
 *费用表实体类
 */
public class Patient_mon {
     
	
	 private int id;
	 private String    unit_Price;
	 private String    total;
	 private int number;
	 private int Pid;
	 
	 
	 public Patient_mon(){
		 
	 }


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUnit_Price() {
		return unit_Price;
	}


	public void setUnit_Price(String unit_Price) {
		this.unit_Price = unit_Price;
	}


	public String getTotal() {
		return total;
	}


	public void setTotal(String total) {
		this.total = total;
	}


	public int getNumber() {
		return number;
	}


	public void setNumber(int number) {
		this.number = number;
	}


	public int getPid() {
		return Pid;
	}


	public void setPid(int pid) {
		Pid = pid;
	}
	 
	 
}
