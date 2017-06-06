package com.mps.domain;
/**
 * 
 * @author Administrator
 *治疗表实体类
 */
public class Patient_tre {
     
	private int id;
	private String      treatname;
	private String      unit;
	private String      number ;
	private String      explain;
	private int Pid;
	
	public Patient_tre(){
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTreatname() {
		return treatname;
	}

	public void setTreatname(String treatname) {
		this.treatname = treatname;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}

	public int getPid() {
		return Pid;
	}

	public void setPid(int pid) {
		Pid = pid;
	}
	
	
	
}
