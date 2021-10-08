<%@page import="com.douzone.guestbook.dao.guestbookDAO"%>
<%@page import="com.douzone.guestbook.vo.guestbookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");


	guestbookVO vo = new guestbookVO();
	vo.setMessage(request.getParameter("message"));
	vo.setName(request.getParameter("name"));
	vo.setPassword(request.getParameter("password"));

	new guestbookDAO().insert(vo);
	 response.sendRedirect("/guestbook01"); 
%>