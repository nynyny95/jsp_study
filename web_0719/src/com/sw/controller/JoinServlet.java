package com.sw.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sw.dao.*;
import com.sw.dto.MemberVO;

@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/join.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String uname = request.getParameter("uname");
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String uadmin = request.getParameter("uadmin");
		
		MemberVO mVo = new MemberVO();
		mVo.setUname(uname);
		mVo.setUserid(userid);
		mVo.setPwd(pwd);
		mVo.setEmail(email);
		mVo.setPhone(phone);
		mVo.setUadmin(Integer.parseInt(uadmin));
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.insertMember(mVo);
		HttpSession session = request.getSession();
		
		// 성공 또는 실패 시 login.jsp에서 message 띄우기
		if (result == 1) {
			// 로그인 시 아이디 value값에 자동입력되도록 세션에 저장
			session.setAttribute("userid", userid);
			// 한번 사용하고 버릴 메시지이므로 세션에 넣지 않음!
			request.setAttribute("message", "회원 가입에 성공했습니다.");
		}else {
			request.setAttribute("message", "회원 가입에 실패했습니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
		dispatcher.forward(request, response);
	}

}
