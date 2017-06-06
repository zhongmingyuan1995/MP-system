package com.mps.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.mps.dao.Patient_wesDao;
import com.mps.domain.Patient;
import com.mps.domain.Patient_wes;
import com.mps.mapper.PatientMapper;
import com.mps.mapper.Patient_wesMapper;
import com.mps.util.Md5Util;
import com.mps.util.SessionUtil;
@Repository(value=Patient_wesDao.SERVER_NAME)
public class Patient_wesDaoImpl implements  Patient_wesDao {
	
	SqlSessionFactory sf = SessionUtil.getSf();
	SqlSession session = null;
	Patient_wesMapper patient_wesMapper = null;
	Patient_wes patient_wes = null;
	List<Patient_wes> list = null;

	@Override
	public void insertPatient_wes(Patient_wes patient_wes) {
		try{
			session = sf.openSession(true);
			patient_wesMapper = session.getMapper(Patient_wesMapper.class);
			patient_wesMapper.insertPatient_wes(patient_wes);
			session.commit();
		}finally{
			session.close();
		}
	}

	@Override
	public List<Patient_wes> getAllPatient_wes(int pageIndex, int pageNum) {	
		try{
			session = sf.openSession(true);
			patient_wesMapper = session.getMapper(Patient_wesMapper.class);
			patient_wes = new Patient_wes(pageIndex, pageNum);
			list = patient_wesMapper.getAllPatient_wes(patient_wes);
		}finally{
			session.close();
		}
		return list;

	}

}
