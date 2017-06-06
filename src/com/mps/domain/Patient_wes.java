package com.mps.domain;
/**
 * 
 * @author Administrator
 *西药处方表实体类
 */
public class Patient_wes {
   
	private int id;
	private String   prescription;
	private String   type;
	private String   batch_number;
	private String   specifications;
	private String   component;
	private String   usage;
	private String   function;
	private String   careful;
	private String   unit_Price;
	private String   total;
	private int   Pid;
	private int pageIndex;
	private int pageNum;
	
	
	
	public Patient_wes(){
		
	}
	
	
	
	
	public Patient_wes(int pageIndex, int pageNum) {
		this.pageIndex = pageIndex;
		this.pageNum = pageNum;
	}




	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPrescription() {
		return prescription;
	}
	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getBatch_number() {
		return batch_number;
	}
	public void setBatch_number(String batch_number) {
		this.batch_number = batch_number;
	}
	public String getSpecifications() {
		return specifications;
	}
	public void setSpecifications(String specifications) {
		this.specifications = specifications;
	}
	public String getComponent() {
		return component;
	}
	public void setComponent(String component) {
		this.component = component;
	}
	public String getUsage() {
		return usage;
	}
	public void setUsage(String usage) {
		this.usage = usage;
	}
	public String getFunction() {
		return function;
	}
	public void setFunction(String function) {
		this.function = function;
	}
	public String getCareful() {
		return careful;
	}
	public void setCareful(String careful) {
		this.careful = careful;
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
	public int getPid() {
		return Pid;
	}
	public void setPid(int pid) {
		Pid = pid;
	}




	public int getPageIndex() {
		return pageIndex;
	}




	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}




	public int getPageNum() {
		return pageNum;
	}




	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	
	
	
	
}
