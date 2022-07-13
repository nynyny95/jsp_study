<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="IsJoin.js"></script>
<h3>=== 회원가입 ===</h3>
<form action="templete.jsp" name="frm_jn">
	<label for="userid">아이디</label>
	<input type="text" name="userid" id="userid"><br>
	<label for="userpw">비밀번호</label>
	<input type="password" name="userpw" id="userpw"><br>
	<label for="userpw1">비밀번호 확인</label>
	<input type="password" name="userpw1" id="userpw1"><br>
	<label for="emailid">이메일</label>
	<input type="email" name="emailid" id="emailid"><br>
	<input type="email" name="emailaddr" id="emailaddr"><br>
	<label for="addr">주소</label>
	<input type="text" name="addr1" id="addr1" placeholder="도로명 주소를 입력해주세요."><br>
	<input type="text" name="addr2" id="addr2" placeholder="상세 주소를 입력해주세요."><br>
	
	<input type="submit" value="회원가입" onclick="return isJoin()">
</form>