package com.mps.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mps.dao.PatientDao;
import com.mps.domain.Patient;
import com.mps.service.PatientService;
@Service(value=PatientService.SERVER_NAME)
public class PatientServiceIpml implements PatientService {

	private List<Patient> list = null;
	@Resource(name=PatientDao.SERVER_NAME)
	private PatientDao patientDao = null;
	public void insert(Patient patient) {
		patientDao.insert(patient);
	}

	@Override
	public boolean selectRecord(String uname, String cname) {
		// TODO Auto-generated method stub
		return false;
	}
	
	public List<Patient> getPatients(String Pno) {
		list = patientDao.getPatients(Pno);
		return list;
	}

	@Override
	public void deleteMyCourse(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Patient> getAllPatient(int pageIndex, int pageNum) {
		try{
			list = patientDao.getAllPatient(pageIndex, pageNum);
		}catch(Exception e){
			int pageIndex2 = 0;
			int pageNum2 = 5;
			list = patientDao.getAllPatient(pageIndex2, pageNum2);
		}
		return list;
	}

}
