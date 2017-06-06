package com.mps.domain;

public class Patient {
       
	private String Pno;
	private String Pname;
	private String Pborth;
	private String Pgender;
	private String Pmarital_status;
	private String Ptel;
	private String Pemail;
	private String Pnation;
	private String Poccupation;
	private String Pwork_unit;
	private String Paddress;
	private String Pphoto;
	private String Premarks;
	
	private int pageIndex;
	private int pageNum;
	
	public Patient(){
		
	}
	
	public Patient(int pageIndex, int pageNum) {
		this.pageIndex = pageIndex;
		this.pageNum = pageNum;
	}

	public Patient(String Pname, String Pborth, String Pgender,
			String Pmarital_status, String Ptel, String Pemail,
			String Pnation, String Poccupation, String Pwork_unit,
			String Paddress, String Pphoto, String Premarks) {
		this.Pname = Pname;
		this.Pborth = Pborth;
		this.Pgender = Pgender;
		this.Pmarital_status = Pmarital_status;
		this.Ptel = Ptel;
		this.Pemail = Pemail;
		this.Pnation = Pnation;
		this.Poccupation = Poccupation;
		this.Pwork_unit = Pwork_unit;
		this.Paddress = Paddress;
		this.Pphoto = Pphoto;
		this.Premarks = Premarks;
	}

	public String getPno() {
		return Pno;
	}

	public void setPno(String pno) {
		Pno = pno;
	}

	public String getPname() {
		return Pname;
	}

	public void setPname(String pname) {
		Pname = pname;
	}

	public String getPborth() {
		return Pborth;
	}

	public void setPborth(String pborth) {
		this.Pborth = pborth;
	}

	public String getPgender() {
		return Pgender;
	}

	public void setPgender(String pgender) {
		Pgender = pgender;
	}

	public String getPmarital_status() {
		return Pmarital_status;
	}

	public void setPmarital_status(String pmarital_status) {
		Pmarital_status = pmarital_status;
	}

	public String getPtel() {
		return Ptel;
	}

	public void setPtel(String ptel) {
		Ptel = ptel;
	}

	public String getPemail() {
		return Pemail;
	}

	public void setPemail(String pemail) {
		this.Pemail = pemail;
	}

	public String getPnation() {
		return Pnation;
	}

	public void setPnation(String pnation) {
		Pnation = pnation;
	}

	public String getPoccupation() {
		return Poccupation;
	}

	public void setPoccupation(String poccupation) {
		Poccupation = poccupation;
	}

	public String getPwork_unit() {
		return Pwork_unit;
	}

	public void setPwork_unit(String pwork_unit) {
		Pwork_unit = pwork_unit;
	}

	public String getPaddress() {
		return Paddress;
	}

	public void setPaddress(String paddress) {
		Paddress = paddress;
	}

	public String getPphoto() {
		return Pphoto;
	}

	public void setPphoto(String pphoto) {
		Pphoto = pphoto;
	}

	public String getPremarks() {
		return Premarks;
	}

	public void setPremarks(String premarks) {
		Premarks = premarks;
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
