<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:choose>
		<c:when test="${param.c == 'red' }">
		<h1 style="color: red">Hello!</h1>
		</c:when>
		<c:when test="${parma.c == 'green' }">
	<h1 style="color: green">Hello!</h1>
		</c:when>
		<c:when test="${parma.c == 'blue' }">
		<h1 style="color: blue">Hello!</h1>
		</c:when>		
		<c:otherwise>
		<h1 style="color: black">Hello!</h1>
		
		</c:otherwise>
	</c:choose>
</body>
</html>