package com.mps.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;






import com.mps.domain.Patient_rec;
import com.mps.service.Patient_recService;

@Controller
public class Patient_recAction {
       
	@Resource(name=Patient_recService.SERVER_NAME)
	private Patient_recService patient_recService = null;
	
	@RequestMapping("/insertPatient_rec.action")
	public String insertPatient_rec(@RequestParam String time,@RequestParam String main,@RequestParam String present,@RequestParam String past,@RequestParam String allergy,
			@RequestParam String diagnosis,@RequestParam String treat,HttpServletRequest request,HttpServletResponse response){
		Patient_rec patient_rec = new Patient_rec(time,main,present,past,allergy,diagnosis,treat);
		patient_recService.insertPatient_rec(patient_rec);	
		return "Doctor/Doctor_treat.jsp";
		
	}
}
