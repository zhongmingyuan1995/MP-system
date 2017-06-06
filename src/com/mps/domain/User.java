package com.mps.domain;

/**
 * 用户
 */
public class User {
	
	private int id;
	private String userName;
	private String passWord;
	private int tp;
	private String email;
	private String tel;
	private String sex;
	private String birthday;
	private String note;
	private String headPicSrc;
	
	private int pageIndex;
	private int pageNum;
	
	public User() {
	}
	
	
	public User(String userName) {
		this.userName = userName;
	}

	

	public User(int id, String userName, String passWord,int tp) {
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
		this.tp = tp;
	}


	public User(String userName, String passWord, int tp) {
		this.userName = userName;
		this.passWord = passWord;
		this.tp = tp;
	}


	public User(String userName, String passWord) {
		this.userName = userName;
		this.passWord = passWord;
	}


	public User(String userName, String passWord, String email, String tel) {
		this.userName = userName;
		this.passWord = passWord;
		this.email = email;
		this.tel = tel;
	}


	public User(String userName, String email, String tel, String sex,
			String birthday, String note, String headPicSrc) {
		this.userName = userName;
		this.email = email;
		this.tel = tel;
		this.sex = sex;
		this.birthday = birthday;
		this.note = note;
		this.headPicSrc = headPicSrc;
	}


	public User(int id, String userName, String passWord, String email,
			String tel) {
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
		this.email = email;
		this.tel = tel;
	}


	public User(String userName, String passWord, String email, String tel,
			String sex, String birthday, String note, String headPicSrc) {
		this.userName = userName;
		this.passWord = passWord;
		this.email = email;
		this.tel = tel;
		this.sex = sex;
		this.birthday = birthday;
		this.note = note;
		this.headPicSrc = headPicSrc;
	}


	public User(String userName, String passWord, int tp, String email,
			String tel, String sex, String birthday, String note,
			String headPicSrc) {
		this.userName = userName;
		this.passWord = passWord;
		this.tp = tp;
		this.email = email;
		this.tel = tel;
		this.sex = sex;
		this.birthday = birthday;
		this.note = note;
		this.headPicSrc = headPicSrc;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	
	public int getTp() {
		return tp;
	}


	public void setTp(int tp) {
		this.tp = tp;
	}


	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getHeadPicSrc() {
		return headPicSrc;
	}
	public void setHeadPicSrc(String headPicSrc) {
		this.headPicSrc = headPicSrc;
	}
	
	
	public User(int pageIndex, int pageNum) {
		this.pageIndex = pageIndex;
		this.pageNum = pageNum;
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
