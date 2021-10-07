<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>join.jsp</h1>
	<% 
		request.setCharacterEncoding("utf-8");
		
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String birthyear = request.getParameter("birthyear");
		String gender = request.getParameter("gender");
		String hobbys[] = request.getParameterValues("hobby");
		String profile = request.getParameter("profile");
	%>
	
	이메일 : <%=email%><br>
	비밀번호 : <%=password%><br>
	생년월일 : <%=birthyear %><br>
	성별 : <%=gender %><br>
	
	
	<ul>
	<%
		for(String hobby : hobbys ){
	%>
		<li><%=hobby %></li>
	<%
		}
	%>
	</ul>
	
	<p><%=profile.replaceAll("\n", "<br>")%></p>
	
	<a href="form.jsp">폼으로 가기</a>
	<a href="hello.jsp">폼으로 가기</a>
	

</body>
</html>