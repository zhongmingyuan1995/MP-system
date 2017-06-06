package com.mps.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mps.dao.Patient_wesDao;
import com.mps.domain.Patient_wes;
import com.mps.service.Patient_wesService;
@Service(value=Patient_wesService.SERVER_NAME)
public class Patient_wesServiceImpl implements Patient_wesService {
	private List<Patient_wes> list = null;
		@Resource(name=Patient_wesDao.SERVER_NAME)
		private Patient_wesDao patient_wesDao = null;
		public void insertPatient_wes(Patient_wes patient_wes) {
			patient_wesDao.insertPatient_wes(patient_wes);
		}
		@Override
		public List<Patient_wes> getAllPatient_wes(int pageIndex, int pageNum) {
			try{
				list = patient_wesDao.getAllPatient_wes(pageIndex, pageNum);
			}catch(Exception e){
				int pageIndex2 = 0;
				int pageNum2 = 5;
				list = patient_wesDao.getAllPatient_wes(pageIndex2, pageNum2);
			}
			return list;
		}

}
