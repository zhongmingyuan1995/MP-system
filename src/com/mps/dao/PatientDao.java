package com.mps.dao;

import java.util.List;

import com.mps.domain.Patient;

public interface PatientDao {
	public static final String SERVER_NAME="com.mps.dao.PatientDao";
	//�������
	public void insertPatient(Patient patient);
	//��ѯ����
	public List<Patient> getPatients(String Pno);
	//��ѯ���в���
	public List<Patient> getAllPatient(int pageIndex,int pageNum);
	//�޸�����
	public void updatePatient(Patient patient);
	//ɾ������
	public void deletePatientByPno(int Pno);
	//��ѯ�û�����--ע����֤
	public int checkPatientName(Patient patient);
	//��½��֤
	public int checkPatient(Patient patient); 
	//��ѯ��½�û���Ϣ
	public Patient getPatient(String patientName);
	//����Ա�޸��û���Ϣ
	public void updatePatientByAdmin(Patient patient);
	//���벡��
	public void insert(Patient patient);
	
}
