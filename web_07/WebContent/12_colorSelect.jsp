<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test = "${param.color == 1}">
	<span style="color: red;"><b>빨강</b></span>
</c:if>
<c:if test = "${param.color == 2}">
	<span style="color: green;"><b>초록</b></span>
</c:if>
<c:if test = "${param.color == 3}">
	<span style="color: blue;"><b>파랑</b></span>
</c:if>
<br><br>
<a href="javascript:history.go(-1)">이전</a>
</body>
</html>