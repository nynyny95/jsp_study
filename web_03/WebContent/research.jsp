<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문 조사 결과</title>
<style>
b {
	font-size: 16pt;
}
</style>
</head>
<body>
	<h2> 설문 조사 결과 </h2>
	<%
	// 아래 코딩 없이도 실행하려면 필터 클래스 만들어야함(이전에 했었다 이말이야)
	// request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	out.println("이름: <b>" + name + "</b><br>");
	
	String gender = request.getParameter("gender");
	out.println("성별: ");
	
	if (gender.equals("male")) {
		out.println("<b>남자</b><br>");
	} else {
		out.println("<b>여자</b><br>");
	}
	
	String seasonArr[] = request.getParameterValues("season");
	out.println("당신이 좋아하는 계절은");
	
	for (String season : seasonArr) {
		int n = Integer.parseInt(season);
		
		switch (n) {
			case 1: out.print("<b> 봄 </b>");
					break;
			case 2: out.print("<b> 여름 </b>");
					break;
			case 3: out.print("<b> 가을 </b>");
					break;
			case 4: out.print("<b> 겨울 </b>");
					break;
		}
	}
	
	out.println("입니다.<br>");
	%>
	
	<br>
	<b><a href='javascript:history.go(-1)'>다시</a></b>
</body>
</html>