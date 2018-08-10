package com.cg.payroll.services;
import java.util.ArrayList;

import com.cg.payroll.beans.Associate;
import com.cg.payroll.exceptions.AssociateDetailsNotFoundException;
public interface PayrollServices {

	Associate acceptAssociateDetails(Associate associate);

	int calculateNetSalary(int associateId);
	Associate getAssociateDetails(int associateId);

	ArrayList<Associate> getAllAssociatesDetails();

}