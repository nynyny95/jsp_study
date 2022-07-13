<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="IsLogin.js"></script>
<form action="templete.jsp" name="frm_lgn">
	<label for="userid">아이디</label>
	<input type="text" name="userid" id="userid"><br>
	<label for="userpw">비밀번호</label>
	<input type="password" name="userpw" id="userpw"><br>
	
	<input type="submit" value="로그인" onclick="return isLogin()">
</form>