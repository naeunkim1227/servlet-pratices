<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%String name = request.getParameter("name");
	String email = request.getParameter("email");
%>


	<h1>helloworld?</h1>
	<%=name %>
	<%=email %>
	

</body>
</html>