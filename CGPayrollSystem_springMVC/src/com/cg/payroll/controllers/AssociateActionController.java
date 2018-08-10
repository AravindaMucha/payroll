package com.cg.payroll.controllers;

import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.cg.payroll.beans.Associate;
import com.cg.payroll.services.PayrollServices;

@Controller
public class AssociateActionController {
	
	@Autowired
	PayrollServices payrollServices;
	
	@RequestMapping(value="/registerCustomer")
	public ModelAndView registerCustomer(@Valid @ModelAttribute("associate") Associate associate, BindingResult result){
		if(result.hasErrors())
			return new ModelAndView("register");
		associate = payrollServices.acceptAssociateDetails(associate);
		return new ModelAndView("registrationSuccessPage", "associate", associate);
	}
	
	@RequestMapping(value = "/viewDetails")
	public ModelAndView viewDetails(@Valid @RequestParam("associateID") int associateID) {
		Associate associate = payrollServices.getAssociateDetails(associateID);
		return new ModelAndView("viewDetailsPage", "associate", associate);

	}
	
	@RequestMapping(value = "/details")
	public ModelAndView details(@ModelAttribute("associate") Associate associate ) {
		ArrayList<Associate> associate1 = payrollServices.getAllAssociatesDetails();
		return new ModelAndView("getAll", "associate1", associate1);
		
		
	}

}
