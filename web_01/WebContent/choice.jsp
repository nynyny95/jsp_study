<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="RadioServlet">
		<label for="gender">성별: </label>
		<input type="radio" id="gender" name="gender" value="남자">남 자
		<input type="radio" id="gender" name="gender" value="여자" checked>여 자<br><br>
		
		<label for="chk_mail">메일정보 수신 여부: </label>
		<input type="radio" id="chk_mail" name="chk_mail" value="yes" checked>수 신
		<input type="radio" id="chk_mail" name="chk_mail" value="no">거 부<br><br>
		
		<input type="checkbox" name="item" value="신발">신발
		<input type="checkbox" name="item" value="가방" checked>가방
		<input type="checkbox" name="item" value="벨트">벨트
		<input type="checkbox" name="item" value="모자">모자<br><br>
		
		<label for="job">직업</label>
		<select name="job" size="1">
			<option value="">선택하세요</option>
			<option value="언론">언론</option>
			<option value="공무원">공무원</option>
			<option value="군인">군인</option>
			<option value="교육">교육</option>
		</select><br><br>
		
		<label for="interest">관심분야</label>
		<select name="interest" size="5" multiple="multiple">
			<option value="스쿠버다이빙">스쿠버다이빙</option>
			<option value="보드게임">보드게임</option>
			<option value="오버워치">오버워치</option>
			<option value="아르미스">아르미스</option>
			<option value="크레이지아케이드">크레이지아케이드</option>
		</select><br><br>
		
		<label for="content">간단한 가입 인사 적어보자! ^0^</label><br>
		<textarea id="content" name="content" rows="3" cols=""></textarea><br>
		
		<input type="submit" value="전송">
	</form>
</body>
</html>