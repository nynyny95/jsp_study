package com.magic.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.magic.dao.EmployeesDAO;
import com.magic.dto.EmployeesVO;

@WebServlet("/login.do")
public class LloginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
		RequestDispatcher rd = request.getRequestDispatcher("llogin.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String eid = request.getParameter("eid");
		String pwd = request.getParameter("pwd");
		String lev = request.getParameter("lev");
		String url = null;
		
		EmployeesDAO eDAO = EmployeesDAO.getInstance();
		
		int result = eDAO.userCheck(eid, pwd, lev);
		
		// 1: 레벨 블일치, 2: 운영자, 3: 일반회원
		if (result == 2 || result == 3) {
			EmployeesVO eVO = new EmployeesVO();
			eVO = eDAO.getMember(eid);
			
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", eVO);
			session.setAttribute("result", result);
			url = "mmain.jsp";
		} else {
			url = "llogin.jsp";
			
			if (result == 1) {
				request.setAttribute("message", "레벨 불일치");
			} else if (result == 0) {
				request.setAttribute("message", "비밀번호 불일치");
			} else {
				request.setAttribute("message", "아이디 불일치");
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
}