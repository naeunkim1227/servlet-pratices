<%@page import="com.douzone.guestbook.dao.guestbookDAO"%>
<%@page import="com.douzone.guestbook.vo.guestbookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	guestbookVO vo = new guestbookVO();

	vo.setNo(Integer.parseInt(request.getParameter("no")));
	vo.setPassword(request.getParameter("password"));
	
	new guestbookDAO().delete(vo);
	response.sendRedirect("/guestbook01"); 
%>