<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
Jakarta EE 에서 JSTL을 사용하려면 
	1. Jakarta Standard Tag Library API
		jakarta.servlet.jsp.jstl-api-3.0.0.jar (45 KB)
	2. org.glassfish.web Jakarta Standard Tag Library Implementation: 
		jakarta.servlet.jsp.jstl-3.0.1.jar (3625 KB)
-->

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>City List</title>
	<style>
		th, td { padding: 3px; }
	</style>
</head>
<body style="margin: 50px;">
	<h1>City List</h1>
	<hr>
	<table border="1">
		<tr><th>아이디</th><th>도시명</th><th>국가코드</th><th>지역명</th><th>인구수</th></tr>
		<c:forEach var="city" items="${list}">
			<tr>
				<td>${city.id}</td><td>${city.name}</td><td>${city.countryCode}</td>
				<td>${city.district}</td><td>${city.population}</td>
			</tr>
		</c:forEach>		
	</table>
</body>
</html>