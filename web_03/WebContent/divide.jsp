<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 에러 발생 시 아래 파일로 대체해달라는 소스코드! -->
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 0으로 나누려하면 500 예외 발생 -->
	<%= 2/0 %>
	<!-- error.jsp 생성 후 다시 실행하면 출력 결과 '/ by zero' 가 보여짐 -->
	<!-- 고객 입장에서 어떤 문제로 페이지를 표시할 수 없는지를 안내할 수 있는 페이지가 되어서 좋음! -->
	<!-- 서버 입장에서도 내부 코드 노출 없이 간단명료하고 불필요한 내용 노출을 방지할 수 있음! -->
</body>
</html>