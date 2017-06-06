package com.mps.service;

import java.util.List;


import com.mps.domain.Patient;

public interface PatientService {
	public static final String SERVER_NAME = "com.mps.service.impl.PatientServiceImpl";
	public void insert(Patient patient);
	//查询某课是否已选
	public boolean selectRecord(String uname,String cname);
	//查询我的课程
	public List<Patient> getPatients(String Pno);
	//查询所有病人
	public List<Patient> getAllPatient(int pageIndex,int pageNum);
	//用户删除已选课程
	public void deleteMyCourse(int id);
}
