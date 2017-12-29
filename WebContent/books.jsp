<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	Books in Simple Table
	<table border="1" cellpadding="5" cellspacing="1">
		<tr>
			<th>ISBN</th>
			<th>Title</th>
		</tr>
		<c:forEach items="${requestScope.books }" var="book">
			<tr>
				<td>${book.isbn }</td>
				<td>${book.title }</td>
			</tr>
		</c:forEach>
	</table>
	<br> Books in Styled Table
	<table border="1" cellpadding="10" cellspacing="2">
		<tr>
			<th>ISBN</th>
			<th>Title</th>
		</tr>
		<c:forEach items="${requestScope.books }" var="book"
			varStatus="status">
			<%-- <tr style="background-color: #dedeff">
				<td>${book.isbn }</td>
				<td>${book.title }</td>
			</tr> --%>
			<c:if test="${status.index%2==0 }">
				<tr style="background-color: #eeeeff">
					<td>${book.isbn }</td>
					<td>${book.title }</td>
				</tr>
			</c:if>
			<c:if test="${status.index%2!=0 }">
				<tr style="background-color: #dedeff">
					<td>${book.isbn }</td>
					<td>${book.title }</td>

				</tr>
			</c:if>
		</c:forEach>
	</table>
	ISBNS only:
	<c:forEach items="${requestScope.books }" var="book" varStatus="status">
		${book.isbn }<c:if test="${!status.last }">,</c:if>
	</c:forEach>
</body>
</html>