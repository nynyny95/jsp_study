<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include  file="hheader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	 td{
	    border: 1px solid green;
	    width: 200px;
	    text-align: center;
	 }
</style>
</head>
<body>
	<form action="login.do" method="post">
		<table align="center">
			<tr>
				<td colspan="2">로그인</td>
			</tr>
			<tr>
				<td align="center">아이디</td>
				<td><input type="text" name="eid"></td>
			</tr>
			<tr>
				<td align="center">비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td align="center">레벨</td>
				<td>
					<select name="lev">
						<option value="A">운영자</option>
						<option value="B">일반회원</option>
					</select>
				</td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="로그인">
					<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
		
		<div style="color: olive; text-align: center;">
			${message}
		</div>
	</form>
</body>
</html>