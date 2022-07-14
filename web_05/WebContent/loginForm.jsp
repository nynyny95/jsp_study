<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="testLogin.jsp">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-sm-3">
					<img alt="snoopy" src="img/snoopy01.jpg">
				</div>
				<div class="col-sm-9">
					<div class="mb-3 row align-items-center">
						<label for="userid" class="col-sm-3 form-label">아이디: </label>
						<input type="text" name="id" id="userid" class="col-sm-6 col-form-control"><br>
					</div>
					
					<div class="mb-3 row align-items-center">
						<label for="userpwd" class="col-sm-3 col-form-label">비밀번호: </label>
						<input type="password" name="pwd" id="userpwd" class="col-sm-6 col-form-control"><br>
					</div>
					
					<div class="row justify-content-center">
						<input type="submit" value="로그인" class="col-sm-2 btn btn-primary">
					</div>
				</div>
			</div>
		</div>
	</form>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>