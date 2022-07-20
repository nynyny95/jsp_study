<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사님과 함께 만들어보는 아이디저장</title>
</head>
<body>
	<%
		String cookieID = "";
		String isCheck = "";
		Cookie[] cookies = request.getCookies();
		
		if (cookies != null && cookies.length > 0) {
			for (int i = 0; i < cookies.length; i++){
				if (cookies[i].getName().equals("userID")) {
					cookieID = cookies[i].getValue();
				}
				
				if (cookies[i].getName().equals("IDcheck")) {
					isCheck = cookies[i].getValue();
				}
			}
		}
	%>
	<!-- 아이디/비밀번호 유효성 검사 후 쿠키값을 통해 자동로그인 기능 구현!  -->
	<form action="00_testLogin.jsp" method="post">
		<label for="userID">아이디: </label>
		<input type="text" name="userID" value="<%= isCheck != "" ? cookieID : "" %>"><br>

		<label for="userPwd">암 &nbsp; 호: </label>
		<input type="password" name="userPwd"><br>
		
		<!-- 밸류속성에 값을 넣지 않은 경우 체크 시 트루라는 값이 넘어감! -->
		<input type="checkbox" name="IDcheck" <%= isCheck != "" ? "checked" : "" %>>아이디 저장<br>
		<input type="submit" value="로그인" style="margin-left: 75px;">
	</form>
</body>
</html>