package com.douzone.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.guestbook.dao.guestbookDAO;
import com.douzone.guestbook.vo.guestbookVO;

public class GuestbookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a");
		
		if("add".equals(action)){

			guestbookVO vo = new guestbookVO();
			vo.setMessage(request.getParameter("message"));
			vo.setName(request.getParameter("name"));
			vo.setPassword(request.getParameter("password"));

			new guestbookDAO().insert(vo);
			response.sendRedirect("/guestbook02/gb"); 
			
		}else if("delete".equals(action)) {
			guestbookVO vo = new guestbookVO();

			vo.setNo(Integer.parseInt(request.getParameter("no")));
			vo.setPassword(request.getParameter("password"));
			
			new guestbookDAO().delete(vo);
			response.sendRedirect("/guestbook02/gb"); 
			
		}else {
			guestbookDAO dao = new guestbookDAO();
		 	List<guestbookVO> list = dao.findall();
		 	
			request.setAttribute("list", list);
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			
			rd.forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
