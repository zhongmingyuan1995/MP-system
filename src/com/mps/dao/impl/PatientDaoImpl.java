package com.mps.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.mps.util.Md5Util;
import com.mps.domain.Patient;
import com.mps.mapper.PatientMapper;
import com.mps.util.SessionUtil;
import com.mps.dao.PatientDao;
@Repository(value=PatientDao.SERVER_NAME)
public class PatientDaoImpl implements PatientDao {
	SqlSessionFactory sf = SessionUtil.getSf();
	SqlSession session = null;
	PatientMapper patientMapper = null;
	Patient patient = null;
	List<Patient> list = null;
	Md5Util md5 = null;
	public void insert(Patient patient) {
		try{
			session = sf.openSession(true);
			patientMapper = session.getMapper(PatientMapper.class);
			patientMapper.insert(patient);
			session.commit();
		}finally{
			session.close();
		}
	}
	@Override
	public void insertPatient(Patient patient) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<Patient> getPatients(String Pno) {
		try{
			session = sf.openSession(true);
			patientMapper = session.getMapper(PatientMapper.class);
			list = patientMapper.getPatients(Pno);
			return list;
		}finally{
			session.close();
		}
	}
	@Override
	public void updatePatient(Patient patient) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void deletePatientByPno(int Pno) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public int checkPatientName(Patient patient) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int checkPatient(Patient patient) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public Patient getPatient(String patientName) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void updatePatientByAdmin(Patient patient) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<Patient> getAllPatient(int pageIndex, int pageNum) {
		md5 = new Md5Util();
		try{
			session = sf.openSession(true);
			patientMapper = session.getMapper(PatientMapper.class);
			patient = new Patient(pageIndex, pageNum);
			list = patientMapper.getAllPatient(patient);
		}finally{
			session.close();
		}
		return list;
	}
	}

