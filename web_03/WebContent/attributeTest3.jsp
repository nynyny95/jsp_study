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
	<h1>Application 영역에 저장된 정보</h1>
	<p><%= application.getAttribute("name") %></p>
	<p><%= application.getAttribute("id") %></p>
	
	<!-- 부등호 열고 닫고를 신경써서 잘 쓰도록 하세! -->
	<h1>session 영역에 저장된 정보</h1>
	<%
		Enumeration e = session.getAttributeNames();
		while (e.hasMoreElements()) {
			String attributeName = (String)e.nextElement();
			String attributeValue = (String)session.getAttribute(attributeName);
	%>
			<p><%= attributeName %></p>
			<p><%= attributeValue %></p>
	<%
		}
	%>
</body>
</html>