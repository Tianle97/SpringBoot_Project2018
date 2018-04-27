<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>SS RAD Final Project</title>
	</head>
	
	<body>
		<form:form modelAttribute="shippingcompany1">
			<h1><b>Add Shipping Company</b></h1>
			<table>
				<tr>
					<td>Company Name:</td>
					<td><form:input path="name"></form:input></td>
					<td><form:errors path="name" ></form:errors></td>
				</tr>
				<tr>
					<td>Home Port:</td>
					<td><form:input path="homePort"></form:input></td>
					<td><form:errors path="homePort"></form:errors></td>
				</tr>
				<tr>
					<td>Balance:</td>
					<td><form:input path="balance"></form:input></td>
					<td><form:errors path="balance"></form:errors></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Add" /></td>
				</tr>
			</table>
			<a href="/">Home</a>
		</form:form>
	</body>
</html>