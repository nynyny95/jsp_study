<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 어노테이션에 기재된 값으로 액션에 넣어줄 것! -->
	<!-- 실행 시 get 방식은 주소 끝에 ?(쿼리스트링: 키(name으로 명명)=밸류 &연산자 키=밸류 붙어서 나오게 됨)가 추가로 붙으며 post는 히든이여서 주소로 정보가 나오지는 않음! -->
	<form method="get" action="MethodServlet">
		<input type="submit" value="get 방식으로 호출하기">
	</form>
	<br>
	<br>
	<form method="post" action="MethodServlet">
		<input type="submit" value="post 방식으로 호출하기">
	</form>
</body>
</html>