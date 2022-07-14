<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="LoginServlet">
		<label for="id">아이디</label>
		<input name="id" type="text" id="id" placeholder="아이디를 입력해주세요."><br>
		
		<label for="id">비밀번호</label>
		<input name="pw" type="password" id="pw" placeholder="비밀번호를 입력해주세요."><br>
		
		<input type="submit" value="로그인">
	</form>
</body>
</html>