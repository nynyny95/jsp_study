<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = "nynyny95";
String pwd = "test12345";
String name = "김나연";

if (id.equals(request.getParameter("id")) &&
	pwd.equals(request.getParameter("pwd"))) {
	session.setAttribute("loginUser", name);
	response.sendRedirect("main.jsp");
} else {
%>
	<script>
		alert("유효하지 않은 로그인 정보입니다. 아이디와 비밀번호를 확인해주세요.");
		location.href="loginForm.jsp";
	</script>
<%
	// response.sendRedirect("loginForm.jsp");
}
%>