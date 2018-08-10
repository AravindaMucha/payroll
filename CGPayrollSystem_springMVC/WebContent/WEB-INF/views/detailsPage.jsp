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
		<h2>View Details</h2>
		<table>
			<form:form action="viewDetails" method="post"
				modelAttribute="associate">

				<tr>
					<td>AssociateID:</td>
					<td><form:input path="associateID" size="30" /></td>
					<td><form:errors path="associateID" cssClass="error" /></td>
				</tr>

				<tr>
					<td>Account Number:</td>
					<td><form:input path="bankDetails.accountNumber" size="30" /></td>
					<td><form:errors path="bankDetails.accountNumber" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Email ID:</td>
					<td><form:input path="emailId" size="30" />
					<td><form:errors path="emailId" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td><input type="submit" value="Submit" /></td>
				</tr>
			</form:form>
		</table>

	</div>
</body>
</html>