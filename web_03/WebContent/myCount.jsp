<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int count = 0;
		// 자바에서 제공하는 내장객체(함수) 아웃 프린트!
		out.print("count: ");
		out.print(++count);	
	%>
</body>
</html>