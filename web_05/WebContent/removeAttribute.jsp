<%@page import="java.util.Enumeration"%>
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
	session.setAttribute("s_name1", "첫 번째 값 ^0^");
	session.setAttribute("s_name2", "두 번째 값 ^0^");
	session.setAttribute("s_name3", "세 번째 값 ^0^");
	
	out.print("<h3> >> 세션값을 삭제하기 전 << </h3>");
	Enumeration names;
	
	names = session.getAttributeNames();
	while (names.hasMoreElements()) {
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + ": " + value + "<br>");
	}
	
	/*
	session.removeAttribute("s_name2");
	
	out.print("<hr><h3> >> 세션값을 삭제한 후 << </h3>");
	names = session.getAttributeNames();
	while (names.hasMoreElements()) {
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + ": " + value + "<br>");
	}
	*/
	
	session.invalidate();
	
	out.print("<hr><h3> >> Q: 과연 세션 아이디가 유효할까요? << </h3>");
	if (request.isRequestedSessionIdValid()) {
		out.print(" A: 세션 아이디가 유효합니다.<hr>");
	} else {
		out.print(" A: 세션 아이디가 유효하지 않습니다.<hr>");
	}
%>
</body>
</html>