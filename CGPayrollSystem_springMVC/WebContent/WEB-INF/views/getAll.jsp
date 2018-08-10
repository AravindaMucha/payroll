<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<c:forEach items = "${associate1}" var="info">
	<c:out value="${info.associateID}"/><br>
	<c:out value="${info.firstName}"/><br>
	<c:out value="${info.salary.basicSalary}"/>
	
	</c:forEach>
</div>
</body>
</html>