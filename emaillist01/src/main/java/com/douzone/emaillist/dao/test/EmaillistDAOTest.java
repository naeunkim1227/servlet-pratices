package com.douzone.emaillist.dao.test;

import java.util.List;

import com.douzone.emailist.dao.EmaillistDAO;
import com.douzone.emailist.vo.EmaillistVO;

public class EmaillistDAOTest {

	public static void main(String[] args) {
		//insertTest();
		findallTest();
	}

	private static void findallTest() {
		List<EmaillistVO> list= new EmaillistDAO().findAll();
		for(EmaillistVO vo : list) {
			System.out.println(vo);
		}
		
		
	}

	private static void insertTest() {
		EmaillistVO vo = new EmaillistVO();
		vo.setFirstName("둘");
		vo.setLastName("리");
		vo.setEmail("drupy@qwe.com");
		
		new EmaillistDAO().insert(vo);
		
	}
	
	
	
	
}
