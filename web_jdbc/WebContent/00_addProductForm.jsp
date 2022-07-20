<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나연샵 - 제품 추가하기</title>
</head>
<body>
<h2>등록할 제품 정보 입력</h2>
<form action="01_addProduct.jsp" method="post">
	<table>
		<tr>
			<td>제품번호</td>
			<td><input type="text" name="pid" size="30"></td>
		</tr>
		<tr>
			<td>제품명</td>
			<td><input type="text" name="pname" size="30"></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><input type="text" name="punitPrice" size="30"></td>
		</tr>
		<tr>
			<td>제품설명 - 20자 이내</td>
			<td><input type="text" name="pdescription" size="30"></td>
		</tr>
		<tr>
			<td>카테고리</td>
			<td><input type="text" name="pcategory" size="30"></td>
		</tr>
		<tr>
			<td>제조사</td>
			<td><input type="text" name="pmanufacturer" size="30"></td>
		</tr>
		<tr>
			<td><input type="submit" value="등록"></td>
			<td><input type="reset" value="취소"></td>
		</tr>
	</table>
</form>
</body>
</html>