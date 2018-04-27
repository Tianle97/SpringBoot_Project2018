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
		<h1><b>New Order</b></h1>
			<table>
				<form:form path="orderInfo" modelAttribute="order1">
					<tr>
						<td>Ship Name:       </td>
						<td><form:select path="ship.sid" items="${shipMap}" >
						</form:select></td>
					</tr>
					<tr>
						<td>Shipping Company:       </td>
						<td><form:select path="shippingCompany.scid" items="${shipCompanyMap}">
						</form:select></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Order Ship"/> </td>
					</tr>
				</form:form>
		</table>
		<a href="/">Home</a>
	
	</body>
</html>