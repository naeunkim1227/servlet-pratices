<%@page import="com.douzone.emailist.dao.EmaillistDAO"%>
<%@page import="com.douzone.emailist.vo.EmaillistVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String firstName = request.getParameter("fn");
	String lastName = request.getParameter("ln");
	String email = request.getParameter("email");
	
	EmaillistVO vo = new EmaillistVO();
	vo.setEmail(email);
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	
	new EmaillistDAO().insert(vo);
	
	 response.sendRedirect("/emaillist01"); 
 %>