<%@page import="com.douzone.guestbook.vo.guestbookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8");
 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form method="post" action="/guestbook02/gb?a=delete">
		<input type="hidden" name="no" value="<%=request.getParameter("no")%>">
		<input type="password" name="password">
		<input type="submit" value="확인">
	<br><br>
	</form>
	<br>
	<a href="/guestbook02/gb">메인으로 돌아가기</a>
	
</body>
</html>