<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id="nynyny95";
	String pwd="12345";
	String name="김나연";
	
	// 필터 인코딩 완료 시 아래 코드는 없애도 됨!
	request.setCharacterEncoding("UTF-8");
	
	if (id.equals(request.getParameter("id")) &&
		pwd.equals(request.getParameter("pwd"))) {
		response.sendRedirect("mainn.jsp?name=" +
							  URLEncoder.encode(name, "UTF-8"));
	} else {
		response.sendRedirect("loginForm.jsp");
	}
%>