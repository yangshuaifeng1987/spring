<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Today's date</title>
</head>
<body>
	<%
		DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.LONG);
		String s = dateFormat.format(new Date());
		out.println("Today is " + s);
	%>
	<br> pageContext:${pageContext.request }
	<br> param:${param.name }
	<br> paramValues:${paramValues.selectedOptions[0] }&nbsp;${paramValues.selectedOption[1] }
	<br>header:${header["accept-language"] }

</body>
</html>