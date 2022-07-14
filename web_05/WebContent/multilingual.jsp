<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String language = "korea";
String cookie = request.getHeader("Cookie");
if (cookie != null) {
	Cookie cookies[] = request.getCookies();
	
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("language")) {
			language = cookies[i].getValue();
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if (language.equals("korea")) { %>
	<h3>안녕 이건 쿠키 예제란다 ^0^</h3>
	<% } else if (language.equals("english")) { %>
	<h3>Hello! This is Cookie example. ^0^</h3>
	<% } else { %>
	<h3>こんにちはお会いできて嬉しいです。 ^0^</h3>
	<% } %>
	<form method="post" action="multilingualPro.jsp">
		<input type="radio" name="language" value="korea"
		<%
		if (language.equals("korea")) {
		%>
		checked
		<% } %>
		>한국어 페이지 보기
		<input type="radio" name="language" value="english"
		<%
		if (language.equals("english")) {
		%>
		checked
		<% } %>
		>영어 페이지 보기
		<input type="radio" name="language" value="Japanese"
		<%
		if (language.equals("Japanese")) {
		%>
		checked
		<% } %>
		>일본어 페이지 보기
		<input type="submit" value="설정">
	</form>
</body>
</html>