package com.mps.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mps.dao.Patient_recDao;
import com.mps.domain.Patient_rec;
import com.mps.service.Patient_recService;
@Service(value=Patient_recService.SERVER_NAME)
public class Patient_recServiceImpl implements Patient_recService {
	@Resource(name=Patient_recDao.SERVER_NAME)
	private Patient_recDao patient_recDao = null;
	public void insertPatient_rec(Patient_rec patient_rec) {
		patient_recDao.insertPatient_rec(patient_rec);
	}

}
