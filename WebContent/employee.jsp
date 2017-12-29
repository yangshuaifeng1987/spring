<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b>accept-language:</b>${header['accept-language'] }
	<br>
	<b>sessionId:</b>${pageContext.session.id}
	<br>
	<b>employee:</b>${requestScope.employee.name },${employee.address.city }
	<br>
	<b>capitals:</b>${capitals["Canada"] }
	<br>
	<c:if test="true">
	 You is right
	</c:if>
	<br>
	<c:forEach var="x" begin="1" end="5">
		<c:out value="${x }"></c:out>
	</c:forEach>
	<br>
	<c:forEach var="city" items="${employee.city }">
	</c:forEach>
</body>
</html>