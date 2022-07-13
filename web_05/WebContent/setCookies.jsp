<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 쿠키 유효기간 설정이 안 되어있다면 모든 브라우저가 죽은 경우  -->
<%
Cookie c = new Cookie("id", "nynyny95");

c.setMaxAge(365*24*60*60);

response.addCookie(c);

response.addCookie(new Cookie("pwd", "test1234"));
response.addCookie(new Cookie("age", "28"));
%>
</body>
</html>