<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사님과 함께 만드는 아이디저장</title>
</head>
<body>
<%
	String ID = "nynyny95";
	String Pwd = "test1234";
	
	String userID = request.getParameter("userID");
	String userPwd = request.getParameter("userPwd");
	String IDcheck = request.getParameter("IDcheck");
	
	if (userID.equals(ID) && userPwd.equals(Pwd)) {
		Cookie c = new Cookie("userID", URLEncoder.encode(ID, "UTF-8"));
		c.setMaxAge(60*60);
		response.addCookie(c);

		Cookie s = new Cookie("IDcheck", IDcheck);
		s.setMaxAge(60*60);
		response.addCookie(s);
%>
	로그인 성공!
	<br><a href='javascript:history.go(-1)'>다시</a>
<%
	} else {
%>
	로그인 실패!
	<br><a href='javascript:history.go(-1)'>다시</a>
<%
	}
%>
</body>
</html>