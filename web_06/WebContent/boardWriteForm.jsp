<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>야호</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body style="margin-top: 60px;">
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">
					<img alt="Brand" src="img/snoopy01.jpg" style="width: 30px; height: 30px; display: inline;">
					<p style="display: inline; font-size: 20px;">나는 스누피가 조와~</p>
				</a>
			</div>
		</div>
	</nav>
	
	<div class="page-header">
	<h1>게시판 글쓰기 <small>야호 나는 대관령이 조와~</small></h1>
	</div>
	
	<form method="post" action="boardWrite.jsp">
		<table>
			<tr>
				<td>
					<b>작성자</b>
				</td>
				<td>
					<input type="text" name="name">
				</td>
				<td>
					<b>비밀번호</b>
				</td>
				<td>
					<input type="password" name="pwd">(게시물 수정 삭제 시 필요합니다.)
				</td>
			</tr>
			<tr>
				<td>
					<b>이메일</b>
				</td>
				<td>
					<input type="text" name="email">
				</td>
			</tr>
			<tr>
				<td>
					<b>글 제목</b>
				</td>
				<td>
					<input type="text" name="title">
				</td>
			</tr>
			<tr>
				<td>
					<b>글 내용</b>
				</td>
				<td>
					<div class="container">
						<textarea class="summernote" name="editordata"></textarea>    
					</div>

				</td>
			</tr>
		</table>
		
		<input type="submit" value="등록">
		<input type="button" value="다시 작성">
	</form>
	<script>
		$('.summernote').summernote({
			height: 150,
			lang: "ko-KR"
		});
	</script>
</body>
</html>