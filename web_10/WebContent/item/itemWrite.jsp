<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아옹다옹 - 상품등록</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/item.js"></script>
</head>
<body>
	<div id="wrap" align="center">
		<h1>상품 등록 - 관리자 페이지</h1>
		<%-- 폼태그에 액션값이 없어도 페이지 이동이 일어남!  --%>
		<form method="post" enctype="multipart/form-data" name="frm">
			<table>
				<tr>
					<th>상	품	명</th>
					<td><input type="text" name="iname" size="80"></td>
				</tr>
				<tr>
					<th>가	격</th>
					<td><input type="text" name="price">원</td>
				</tr>
				<tr>
					<th>사	진</th>
					<td>
						<input type="file" name="pictureurl">
						(주의사항: 이미지를 변경하고자 할 때만 선택하세요.)
					</td>
				</tr>
				<tr>
					<th>설	명</th>
					<td><textarea cols="80" rows="10" name="description"></textarea></td>
				</tr>
			</table>
			<br>
			<input type="submit" value="등록" onclick="return itemCheck()">
			<input type="reset" value="다시 작성">
			<input type="button" value="목록" onclick="location.href='itemList.do'">
		</form>
	</div>
</body>
</html>