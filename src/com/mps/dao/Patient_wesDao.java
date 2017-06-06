package com.mps.dao;

import java.util.List;

import com.mps.domain.Patient_wes;

public interface Patient_wesDao {
	public static final String SERVER_NAME="com.mps.dao.Patient_wesDao";
	public void insertPatient_wes(Patient_wes patient_wes);
	public List<Patient_wes> getAllPatient_wes(int pageIndex,int pageNum);
}
