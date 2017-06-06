package com.mps.service;

import com.mps.domain.Patient_rec;

public interface Patient_recService {
	public static final String SERVER_NAME = "com.mps.service.Patient_recService";
	public void insertPatient_rec(Patient_rec patient_rec);
}
