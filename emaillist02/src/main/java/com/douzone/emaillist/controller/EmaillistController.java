package com.douzone.emaillist.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.emailist.dao.EmaillistDAO;
import com.douzone.emailist.vo.EmaillistVO;


public class EmaillistController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a");
		
		
		if("form".equals(action)) {
			RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/form.jsp");
			//위의 주소로 보낸다.
			rd.forward(request, response);
			
		}else if("add".equals(action)){
			System.out.println("글 등록 액션 실행");
			
			String firstName = request.getParameter("fn");
			String lastName = request.getParameter("ln");
			String email = request.getParameter("email");
			
			EmaillistVO vo = new EmaillistVO();
			vo.setEmail(email);
			vo.setFirstName(firstName);
			vo.setLastName(lastName);
			
			new EmaillistDAO().insert(vo);
			response.sendRedirect("/emaillist02/el"); 

		}else {
			EmaillistDAO dao = new EmaillistDAO();
			List<EmaillistVO> list = dao.findAll();
			
			//목적지 작성하기
			request.setAttribute("list", list);
			
			RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			//위의 주소로 보낸다.
			rd.forward(request, response);
		
		}
	
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
