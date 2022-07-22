<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아옹다옹 - 상품 삭제하기</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
	<div id="wrap" align="center">
		<h1>상품 삭제 - 관리자 페이지</h1>
		<form action="itemDelete.do" method="post">
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
								<td>${item.iname}</td>
							</tr>
							<tr>
								<th>가	격</th>
								<td>${item.price}</td>
							</tr>
							<tr>
								<th>설	명</th>
								<td>
									<div style="height: 220px; width: 100%">${item.description}</div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<br>
			<input type="hidden" name="code" value="${item.code}">
			<input type="submit" value="삭제">
			<input type="button" value="목록" onclick="location.href='itemList.do'">
		</form>
	</div>
</body>
</html>