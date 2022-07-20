<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>
<c:set var = "msg" value="Hello"></c:set>
\${msg} = ${mge}<br>
<c:set var="age">
	30
</c:set>
\${age} = ${age}<hr>

<c:set var = "member"
	   value="<%= new com.nayeon.javabeans.MemberBean() %>">
</c:set>
</body>
</html>