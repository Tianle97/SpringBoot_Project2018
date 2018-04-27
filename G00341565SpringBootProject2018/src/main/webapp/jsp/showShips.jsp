<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>SS RAD Final Project</title>
		<style>
			table, th, td {
				border: 1px solid black;
			}
		</style>
	</head>
	
	<body>
		<h1><b>Ships</b></h1>
			<br>
			<table>
				<tr>
					<th>Name</th>
					<th>Passengers</th>
					<th>Cost</th>
					<th>Length(Metres)</th>
					<th>Shipping Company</th>
				</tr>
				<tr>
					<c:forEach items="${ships}" var="s">
						<tr>
							<td>${s.name}</td>
							<td>${s.passengers}</td>
							<td>${s.cost}</td>
							<td>${s.metres}</td>
							<td>${s.shippingCompany.name}</td>
						</tr>
					</c:forEach>
				</tr>
			</table>
		<a href="/">Home</a>
	</body>
</html>