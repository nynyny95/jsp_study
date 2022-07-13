<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pageFile = request.getParameter("page");
	if (pageFile == null) {
		pageFile = "newItem";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나연이의 첫 홈페이지 메인</title>
</head>
<body>
<!-- 총 3행, 1행과 3행은 열이 1개, 2행은 열이 2개! -->
<table width="960" border="1" border-shadow="1" color="gray" align="center">
	<tr>
		<td height="43" colspan="2">
			<jsp:include page="top.jsp"></jsp:include>
		</td>
	</tr>
	<tr>
		<td>
			<jsp:include page="left.jsp"></jsp:include>
		</td>
		<td width="760">
			<!-- 처음에는 받아오는 파라미터 없이 실행됨 -->
			<jsp:include page='<%= pageFile + ".jsp"%>'></jsp:include>
		</td>
	</tr>
	<tr>
		<td height="43" colspan="2">
			<jsp:include page="bottom.jsp"></jsp:include>
		</td>
	</tr>
</table>
</body>
</html>