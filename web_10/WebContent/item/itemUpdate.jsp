<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아옹다옹 - 상품 수정</title>
</head>
<body>
	<div id="wrap" align="center">
		<h1>상품 수정 - 관리자 페이지</h1>
		<form method="post" enctype="multipart/form-data" name="frm">
			<input type="hidden" name="code" value="${item.code}">
			<input type="hidden" name="nonmakeImg" value="${item.pictureurl}">
			<table>
				<tr>
					<td>
						<c:choose>
							<c:when test="${empty item.pictureurl}">
								<img src="upload/noimage.gif">
							</c:when>
							<c:otherwise>
								<img src="upload/${item.pictureurl}">
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<table>
							<tr>
								<th style="width: 80px">상	품	명</th>
								<td>
									<input type="text" name="iname" value="${item.iname}" size="80">
								</td>
							</tr>
							<tr>
								<th style="width: 80px">가	격</th>
								<td>
									<input type="text" name="price" value="${item.price}">원
								</td>
							</tr>
							<tr>
								<th style="width: 80px">사	진</th>
								<td>
									<input type="file" name="pictureurl">
									(주의사항: 이미지를 변경하고자 할 때만 선택하세요.)
								</td>
							</tr>
							<tr>
								<th style="width: 80px">설	명</th>
								<td>
									<textarea name="description" cols="90" rows="10">${item.description}</textarea>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<br>
			<input type="submit" value="수정" onclick="return itemCheck()">
			<input type="reset" value="다시 작성">
			<input type="button" value="목록" onclick="location.href='itemList.do'">
		</form>
	</div>
</body>
</html>