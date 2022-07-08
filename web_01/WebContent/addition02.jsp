<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 자바 문법을 사용하고 싶을 때 -->
	<%
		// 스크립틀릿: 자바코드 작성!
		int num1 = 20;
		int num2 = 10;
		int add = num1 + num2;
	%>
	
	<!-- 출력은 아래와 같이 할 수 있음 -->
	<%=num1 %> + <%=num1 %> = <%=add %>
</body>
</html>