package com.mps.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.mps.dao.Patient_recDao;
import com.mps.dao.UserDao;
import com.mps.domain.Patient_rec;
import com.mps.mapper.Patient_recMapper;
import com.mps.util.SessionUtil;
@Repository(value=Patient_recDao.SERVER_NAME)
public class Patient_recDaoImpl implements Patient_recDao {
    
	SqlSessionFactory sf = SessionUtil.getSf();
	SqlSession session = null;
	Patient_recMapper patient_recMapper = null;
	Patient_rec patient_rec = null;
	List<Patient_rec> list = null;
	@Override
	public void insertPatient_rec(Patient_rec patient_rec) {
		try{
			session = sf.openSession(true);
			patient_recMapper = session.getMapper(Patient_recMapper.class);
			patient_recMapper.insertPatient_rec(patient_rec);
			session.commit();
		}finally{
			session.close();
		}
	}
	
	

	
}
