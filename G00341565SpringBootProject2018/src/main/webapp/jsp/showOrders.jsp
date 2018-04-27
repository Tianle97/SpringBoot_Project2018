<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		<style>
			table, th, td {
				border: 1px solid black;
			}
		</style>
	</head>
	<body>
		<h1><b>Orders</b></h1>
			<br>
			<table>
				<tr>
					<th>Order Number</th>
					<th>Shipping Company Name</th>
					<th> Ship Name</th>
					<th>Order Date</th>
				</tr>
				<tr>
					<c:forEach items="${orders}" var="o">
						<tr>
							<td>${o.oid}</td>
							<td>${o.shippingCompany.name}</td>
							<td>${o.ship.name}</td>
							<td>${o.date}</td>
						</tr>
					</c:forEach>
				</tr>
			</table>
		<a href="/">Home</a>
	</body>
</html>