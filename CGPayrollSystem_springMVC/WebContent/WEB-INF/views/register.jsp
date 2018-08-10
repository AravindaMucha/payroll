<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.error {
	color: red;
	font-weight: bold;
}
</style>
</head>
<body>
	<div align="center">
		<h2>Enroll Customer details here</h2>
		
		
		<table>
			<form:form action="registerCustomer" method="post"
				modelAttribute="associate">
				

				<tr>
					<td>Account Number:</td>
					<td><form:input path="bankDetails.accountNumber" size="30" /></td>
					<td><form:errors path="bankDetails.accountNumber" cssClass="error" /></td>
				</tr>

				<tr>
					<td>BankName:</td>
					<td><form:input path="bankDetails.bankName" size="30" />
					<td><form:errors path="bankDetails.bankName" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>IFSC Code:</td>
					<td><form:input path="bankDetails.ifscCode" size="30" />
					<td><form:errors path="bankDetails.ifscCode" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Department:</td>
					<td><form:input path="department" size="30" />
					<td><form:errors path="department" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Designation:</td>
					<td><form:input path="designation" size="30" />
					<td><form:errors path="designation" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Email ID:</td>
					<td><form:input path="emailId" size="30" />
					<td><form:errors path="emailId" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstName" size="30" />
					<td><form:errors path="firstName" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Last Name:</td>
					<td><form:input path="lastName" size="30" />
					<td><form:errors path="lastName" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Pan Card:</td>
					<td><form:input path="pancard" size="30" />
					<td><form:errors path="pancard" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Basic Salary:</td>
					<td><form:input path="salary.basicSalary" size="30" />
					<td><form:errors path="salary.basicSalary" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>EPF:</td>
					<td><form:input path="salary.epf" size="30" />
					<td><form:errors path="salary.epf" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>HRA:</td>
					<td><form:input path="salary.hra" size="30" />
					<td><form:errors path="salary.hra" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Net Salary:</td>
					<td><form:input path="salary.netSalary" size="30" />
					<td><form:errors path="salary.netSalary" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Yearly Investment Under 80C:</td>
					<td><form:input path="yearlyInvestmentUnder80C" size="30" />
					<td><form:errors path="yearlyInvestmentUnder80C" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td><input type = "submit" value="Submit"/></td>
				</tr>
			</form:form>
		</table>
	</div>
</body>
</html>