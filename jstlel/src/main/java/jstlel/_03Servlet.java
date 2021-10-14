package jstlel;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/03")
public class _03Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<UserVO> list = new ArrayList<UserVO>();
		
		UserVO vo1 = new UserVO();
		vo1.setNo(1L);
		vo1.setName("루피1");
		list.add(vo1);
		
		UserVO vo2 = new UserVO();
		vo2.setNo(2L);
		vo2.setName("루피2");
		list.add(vo2);
		
		UserVO vo3 = new UserVO();
		vo3.setNo(3L);
		vo3.setName("루피3");
		list.add(vo3);
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("/WEB-INF/views/03.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
