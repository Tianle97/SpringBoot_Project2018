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
		<h1><b>Shipping Companies</b></h1>
			<br>
			<table>
				<tr>
					<th>Name</th>
					<th>Home Port</th>
					<th>Balance</th>
					<th>Ships</th>
				</tr>
				<tr>
					<c:forEach items="${companies}" var="c">
						<tr>
							<td>${c.name}</td>
							<td>${c.homePort}</td>
							<td>${c.balance}</td>
							<td>
							 <ul>
							  <c:forEach items="${c.ships}" var="s">
							   <li>${s.name}, ${s.metres} Mrts,${s.cost}</li>
  							  </c:forEach>
							 </ul>
							</td>
						</tr>
					</c:forEach>
				</tr>
			</table>
		<a href="/">Home</a>
	</body>
</html>