package com.mps.service;

import java.util.List;


import com.mps.domain.Patient;

public interface PatientService {
	public static final String SERVER_NAME = "com.mps.service.impl.PatientServiceImpl";
	public void insert(Patient patient);
	//��ѯĳ���Ƿ���ѡ
	public boolean selectRecord(String uname,String cname);
	//��ѯ�ҵĿγ�
	public List<Patient> getPatients(String Pno);
	//��ѯ���в���
	public List<Patient> getAllPatient(int pageIndex,int pageNum);
	//�û�ɾ����ѡ�γ�
	public void deleteMyCourse(int id);
}
