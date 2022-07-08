<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="param.js"></script>
</head>
<body>
	<!-- name속성은 파라미터 역할 뿐만아니라 객체의 계층구조 접근 시 해당 개체를 나타내는 값으로도 활용할 수 있음! -->
	<form method="get" action="ParamServlet" name="frm">
		<!-- value속성은 안 적으면 기본값으로 빈 문자가 들어가기에 안 적는 것 뿐임, 안 적었다고 밸류 속성이 없는 것이 아니다 이말이야 -->
		아이디: <input type="text" name="id"><br>
		나 &nbsp; 이: <input type="text" name="age"><br>
		<input type="submit" value="전송" onclick="return check()">
	</form>
</body>
</html>