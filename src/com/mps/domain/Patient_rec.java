package com.mps.domain;
/**
 * 
 * @author Administrator
 *病历表实体类
 */
public class Patient_rec {
	
	
	private int id;
	private String     time;
	private String     main;
	private String     present;
	private String     past;
	private String     allergy;
	private String     diagnosis;
	private String     treat;
	private int     Mid;
	
	
	public   Patient_rec(){
		
	}


	public Patient_rec(String time, String main, String present,
			String past, String allergy, String diagnosis, String treat) {
		this.time = time;
		this.main = main;
		this.present = present;
		this.past = past;
		this.allergy = allergy;
		this.diagnosis = diagnosis;
		this.treat = treat;
		
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public String getMain() {
		return main;
	}


	public void setMain(String main) {
		this.main = main;
	}


	public String getPresent() {
		return present;
	}


	public void setPresent(String present) {
		this.present = present;
	}


	public String getPast() {
		return past;
	}


	public void setPast(String past) {
		this.past = past;
	}


	public String getAllergy() {
		return allergy;
	}


	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}


	public String getDiagnosis() {
		return diagnosis;
	}


	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}


	public String getTreat() {
		return treat;
	}


	public void setTreat(String treat) {
		this.treat = treat;
	}


	public int getMid() {
		return Mid;
	}


	public void setMid(int mid) {
		Mid = mid;
	}
	   
    
}
