package com.cg.payroll.controllers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cg.payroll.beans.Associate;
import com.cg.payroll.services.PayrollServices;

@Controller
public class URIController {
	
	@Autowired
	PayrollServices payrollServices;
	
	@RequestMapping(value = "/")
	public String getIndexPage() {
		return "indexPage"; 
	}
	
	@RequestMapping(value = "/register")
	public String getRegisterPage() {
		return "register"; 
	}

	@ModelAttribute("associate")
	public Associate getCustomer() {
		return new Associate();
	}
	
	@RequestMapping(value = "/detailsPage")
	public String getDetailsPage() {
		return "detailsPage";
	}
	
	@RequestMapping(value = "/AllAssociatedetailsPage")
	public String getAllAssociatedetailsPage() {
		return "AllAssociatedetailsPage";
	}

	
	
	@RequestMapping(value = "/GetdetailsPage")
	public String GetdetailsPage() {
		return "GetdetailsPage";
	}
	
	
	
}
