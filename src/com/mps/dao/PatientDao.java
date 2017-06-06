package com.mps.dao;

import java.util.List;

import com.mps.domain.Patient;

public interface PatientDao {
	public static final String SERVER_NAME="com.mps.dao.PatientDao";
	//添加数据
	public void insertPatient(Patient patient);
	//查询数据
	public List<Patient> getPatients(String Pno);
	//查询所有病人
	public List<Patient> getAllPatient(int pageIndex,int pageNum);
	//修改数据
	public void updatePatient(Patient patient);
	//删除数据
	public void deletePatientByPno(int Pno);
	//查询用户个数--注册验证
	public int checkPatientName(Patient patient);
	//登陆验证
	public int checkPatient(Patient patient); 
	//查询登陆用户信息
	public Patient getPatient(String patientName);
	//管理员修改用户信息
	public void updatePatientByAdmin(Patient patient);
	//插入病人
	public void insert(Patient patient);
	
}
