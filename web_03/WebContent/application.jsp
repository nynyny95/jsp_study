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
String appPath = application.getContextPath();
String filePath = application.getRealPath("application.jsp");
String serverInfo = application.getServerInfo();
%>
웹 어플리케이션의 컨덱스트 패스명<br>
<b><%= appPath %></b>
웹 어플리케이션의 파일 경로명<br>
<b><%= filePath %></b>
컨테이너 이름과 버전 변환<br>
<b><%= serverInfo %></b>
</body>
</html>