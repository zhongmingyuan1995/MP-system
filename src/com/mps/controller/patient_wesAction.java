package com.mps.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mps.domain.Patient_wes;
import com.mps.service.Patient_wesService;

@Controller
public class patient_wesAction {
	
	@Resource(name=Patient_wesService.SERVER_NAME)
	private Patient_wesService patient_wesService = null;
	
	@RequestMapping(value = "/getAllPatient_wes.action")
	public String SelectAllPatient_wes(@RequestParam int pageIndex,
			@RequestParam int pageNum, HttpServletRequest request,
			HttpServletResponse response) {
		List<Patient_wes> patient_wesList = patient_wesService.getAllPatient_wes(pageIndex, pageNum);
		request.setAttribute("pageIndex", pageIndex);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("patient_wesList", patient_wesList);
		return "Doctor/Doctor_news.jsp";
	}

}
