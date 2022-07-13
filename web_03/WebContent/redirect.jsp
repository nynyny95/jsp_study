<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	현재 페이지는 안 보입니다.
	<%
		response.sendRedirect("http://www.daum.net");
	%>
</body>
</html>