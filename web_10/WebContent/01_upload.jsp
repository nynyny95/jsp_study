<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 전송 폼 만들기</title>
</head>
<body>
	<form action="Upload.do" method="post" enctype="multipart/form-data">
		글쓴이: <input type="text" name="name" style="width: 150px;"><br>
		제 &nbsp; 목: <input type="text" name="title" style="width: 149px;"><br>
		파일 지정하기: <input type="file" name="uploadFile"><br>
		<input type="submit" value="전송"><br>
	</form>
</body>
</html>