<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="frm" action="comboPro.jsp">
		<h1>검색 엔진 정보 페이지</h1>
		<h2>검색 엔진을 선택하세요.</h2>
		<select name="site">
			<option value="https://www.naver.com">선택하세요</option>
			<option value="https://www.naver.com">네이버</option>
			<option value="https://www.naver.com">다음</option>
			<option value="https://www.naver.com">네이트</option>
			<option value="https://www.naver.com">야후</option>
			<option value="https://www.naver.com">구글</option>
		</select>
		<input type="submit" value="선택" />
	</form>
</body>
</html>