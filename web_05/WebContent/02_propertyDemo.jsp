<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="com.nayeon.javabeans.MemberBean"></jsp:useBean>

	<hr>
	◎ 자바 빈 객체 생성 후 저장된 정보 출력하기 <br><br>
	이름: <jsp:getProperty property="name" name="member"/><br>
	아이디: <jsp:getProperty property="userid" name="member"/>

	<hr>
	◎ 정보 변경한 후 변경된 정보 출력하기 <br><br>
	<jsp:setProperty property="name" name="member" value="김동현"/>
	<jsp:setProperty property="userid" name="member" value="cutedong"/>
	
	이름: <jsp:getProperty property="name" name="member"/><br>
	아이디: <jsp:getProperty property="userid" name="member"/>
</body>
</html>