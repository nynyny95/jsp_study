<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="SelectServlet">
	<span style="float: left; margin-right: 20px">
		<label for="job">직업</label>
		<select id="job" name="job" size="1">
			<option value="">선택하세요</option>
			<option value="학생">학생</option>
			<option value="주부">주부</option>
			<option value="취업준비생">취업준비생</option>
			<option value="군인">군인</option>
			<option value="개발자">개발자</option>
			<option value="교사">교사</option>
			<option value="공무원">공무원</option>
			<option value="의사">의사</option>
			<option value="변호사">변호사</option>
		</select>
	</span>
	
	<label for="inter" style="float: left;">관심분야</label>
	<select id="inter" name="inter" size="5" multiple="multiple">
		<option value="수학">수학</option>
		<option value="예체능">예체능</option>
		<option value="과학">과학</option>
		<option value="언어">언어</option>
		<option value="사회">사회</option>
		<option value="기술/가정">기술/가정</option>
		<option value="철학">철학</option>
		<option value="종교">종교</option>
		<option value="기타">기타</option>
	</select>
	<br><br>
	<input type="submit" value="전송" style="float: right; margin-right: 50px">
</form>
</body>
</html>