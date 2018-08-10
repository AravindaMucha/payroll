package com.cg.payroll.beans;

import javax.persistence.Embeddable;

@Embeddable
public class Salary {
	private int basicSalary, hra,epf,netSalary;
	
	public Salary() {
		super();
	}

	public Salary(int basicSalary, int hra, int epf, int netSalary) {
		super();
		this.basicSalary = basicSalary;
		this.hra = hra;
		this.epf = epf;
		this.netSalary = netSalary;
	}	
	
	

	public int getBasicSalary() {
		return basicSalary;
	}

	public void setBasicSalary(int basicSalary) {
		this.basicSalary = basicSalary;
	}

	public int getHra() {
		return hra;
	}

	public void setHra(int hra) {
		this.hra = hra;
	}

	public int getEpf() {
		return epf;
	}

	public void setEpf(int epf) {
		this.epf = epf;
	}

	public int getNetSalary() {
		return netSalary;
	}

	public void setNetSalary(int netSalary) {
		this.netSalary = netSalary;
	}

	@Override
	public String toString() {
		return "Salary [basicSalary=" + basicSalary + ", hra=" + hra + ", epf=" + epf + ", netSalary=" + netSalary
				+ "]";
	}

	
	
	
}