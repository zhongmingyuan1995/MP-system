package com.mps.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.mps.domain.Patient;
import com.mps.service.PatientService;

@Controller
public class PatientAction {
	@Resource(name=PatientService.SERVER_NAME)
	private PatientService patientService = null;
	
	@RequestMapping("/addPatientByUser.action")
	public String addPatientByUser(@RequestParam String Pname,@RequestParam String Pborth,@RequestParam String Pgender,@RequestParam String Pmarital_status,@RequestParam String Ptel,
			@RequestParam String Pemail,@RequestParam String Pnation,@RequestParam String Poccupation,@RequestParam String Pwork_unit,@RequestParam String Paddress,@RequestParam String Pphoto,
			@RequestParam String Premarks,HttpServletRequest request){
		Patient patient = new Patient(Pname,Pborth,Pgender,Pmarital_status,Ptel,Pemail,Pnation,Poccupation,Pwork_unit,Paddress,Pphoto,Premarks);
		patientService.insert(patient);
		return "Patient/Patient_addsuccessed.jsp";
	}
	//ÎÒµÄ¿Î³Ì
	@RequestMapping("/getPatients.action")
	public String selectPatient(@RequestParam String Pno,@RequestParam int tp,
			HttpServletRequest request) {
		List<Patient> PatientList = patientService.getPatients(Pno);
		request.setAttribute("PatientList", PatientList);
		if(tp==1){
			return "Patient/Patient_info.jsp";
		}
		else if (tp==2) {
			return "Doctor/Doctor_treat.jsp";
		}else
			return "Admin/Admin_user.jsp";
	}

	@RequestMapping(value = "/getAllPatient.action")
	public String SelectAllPatient(@RequestParam int pageIndex,
			@RequestParam int pageNum, HttpServletRequest request,
			HttpServletResponse response) {
		List<Patient> patientList = patientService.getAllPatient(pageIndex, pageNum);
		request.setAttribute("pageIndex", pageIndex);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("patientList", patientList);
		return "Doctor/Doctor_patient.jsp";
	}
}
