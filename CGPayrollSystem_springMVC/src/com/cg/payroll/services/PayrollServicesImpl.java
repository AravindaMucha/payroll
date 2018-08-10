package com.cg.payroll.services;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cg.payroll.beans.Associate;
import com.cg.payroll.daoservices.PayrollDAOServices;


@Component(value = "payrollServices")

public class PayrollServicesImpl implements PayrollServices {

	@Autowired
	private PayrollDAOServices payrollDAOServices;
	
	@Override
	public Associate acceptAssociateDetails(Associate associate) {
		
		return payrollDAOServices.save(associate);
	}

	@Override
	public int calculateNetSalary(int associateId)  {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Associate getAssociateDetails(int associateId)  {
		Associate associate = payrollDAOServices.findOne(associateId);
		return associate;
	}

	@Override
	public ArrayList<Associate> getAllAssociatesDetails() {
		
//		EntityManager entityManager = null;
//		Query query = entityManager.createNamedQuery("getAllAssociatesDetails");
//		List<Associate> associateList = query.getResultList();
		
		List<Associate> associateList = payrollDAOServices.findAll();
		return (ArrayList<Associate>) associateList;
		
	}

}
