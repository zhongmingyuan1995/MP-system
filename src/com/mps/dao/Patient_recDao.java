package com.mps.dao;

import com.mps.domain.Patient_rec;

public interface Patient_recDao {
    
	public static final String SERVER_NAME="com.mps.dao.Patient_recDao";

	public void insertPatient_rec(Patient_rec patient_rec);
}
