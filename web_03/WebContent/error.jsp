<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 아래 함수를 사용하여 메시지 표시 -->
	<!-- isErrorPage true 선언 후 exception(내장객체) 사용 가능해짐 -->
	<%= exception.getMessage() %>
</body>
</html>