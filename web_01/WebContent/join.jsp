<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>야호나는대관령이조와</title>
<style>
	label {
		width:230px;
		display:inline-block;
		float:left;
	}
	
	#button {
		text-align:center;
	}
</style>
<!-- <script type="text/javascript" src="join.js"></script> -->
<script src="https://code.jquery.com/jquery-Latest.min.js"></script>
<script>
	function check() {
		if ($("#name").val() == "") {
			alert("이름을 작성해주세요.");
			$("#name").focus();
			return false;
		}
	}
</script>
</head>
<body>
	<form name="frm" method="post" action="JoinServlet">
		<label for="name">이름</label>
		<input type="text" name="name" placeholder="이름을 입력하세요."><br>
		
		<label for="number1">주민등록번호</label>
		<input type="text" name="number1"><b>-</b>
		<input type="password" name="number2"><br>
		
		<label for="id">아이디</label>
		<input type="text" id="id" name="id" placeholder="아이디를 입력하세요."><br>
		
		<label for="pw1">비밀번호</label>
		<input type="password" id="pw1" name="pw1"><br>
		<label for="pw2">비밀번호 확인</label>
		<input type="password" id="pw2" name="pw2"><br>
		
		<label for="email1">이메일</label>
		<input type="text" name="email1"><b>@</b>
		<input type="text" name="email2">
		<select id="email3" name="email3">
			<option value="">직접입력</option>
			<option value="naver.com">naver.com</option>
			<option value="nate.com">nate.com</option>
			<option value="daum.net">daum.net</option>
			<option value="gmail.com">gmail.com</option>
		</select><br>
		
		<label for="addrnum">우편번호</label>
		<input type="text" name="addrnum" placeholder="우편번호를 입력하세요."><br>
		
		<label for="addr1">주소</label>
		<input type="text" name="addr1" placeholder="도로명주소를 입력하세요.">
		<input type="text" name="addr2" placeholder="상세주소를 입력하세요."><br>
		
		<label for="cell">핸드폰번호</label>
		<input type="text" name="cell" placeholder="전화번호를 입력하세요."><br>
		
		<label for="job">직업</label>
		<select id="job" name="job" size=4>
			<option value="학생">학생</option>
			<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
			<option value="언론">언론</option>
			<option value="공무원">공무원</option>
			<option value="교육">교육</option>
			<option value="예술">예술</option>
			<option value="체육">체육</option>
		</select><br>
		
		<label for="radio">메일/sms 정보 수신 여부</label>
		<input type="radio" name="radio" value="수신" checked>수신
		<input type="radio" name="radio" value="거부">거부<br>
		
		<label for="interest">관심분야</label>
		<input type="checkbox" name="interest" value="생두">생두
		<input type="checkbox" name="interest" value="원두">원두
		<input type="checkbox" name="interest" value="로스팅">로스팅
		<input type="checkbox" name="interest" value="핸드드립">핸드드립
		<input type="checkbox" name="interest" value="에스프레소">에스프레소
		<input type="checkbox" name="interest" value="창업">창업<br>
		
		<div id="button">
			<input type="submit" value="회원가입" onClick="return check()">
			<input type="button" value="취소">
		</div>
	</form>
</body>
</html>

<!-- 
강사님, 교재 코드

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form name="frm" action="JoinServlet">
      <label for="name"> 이름 </label>
      <input type="text" name = "name" value="성윤정"><br>
      
      <label>주민등록번호  </label>
      <input type="text" name="jumin_1" value="890719"> - <input type="text" name="jumin_2" value="2012123"> <br>
      
      <label for="id"> 아이디  </label>
      <input type="text" id="id" name="id" value="pinksung"><br>
      
      <label for="pwd"> 비밀번호 </label>
      <input type="password" id="pwd" name="pwd" value="1234"><br>
      
      <label for="pwd_re"> 비밀번호 확인  </label>
      <input type="password" id="pwd_re" name="pwd_re" value="1234"><br>
      
      <label for="email">이메일 </label>
      <input type="text" name="email" value="pinksung"> @ <input type="text" name="email_dns" value=""> 
      <select name="eamiladdr">
         <option value="">직접입력</option>
           <option value="daum.net">daum.net</option>
           <option value="empal.com">empal.com</option>
           <option value="gmail.com">gmail.com</option>
           <option value="hanmail.net">hanmail.net</option>
           <option value="msn.com">msn.com</option>
           <option value="naver.com">naver.com</option>
           <option value="nate.com" selected="selected">nate.com</option> 
      </select><br>
      
      <label for="zip">우편번호</label>
      <input type="text" id="zip" name="zip" value="321-212"><br>
      
      <label for="addr1">주소</label>
      <input type="text" id="addr1" name="addr1"  value="서울시 송파구 잠실2동">
       <input type="text" name="addr2" value="엘스 아파트 201동 1203호"><br>
      
      <label for="phone">핸드폰번호</label>
      <input type="tel" id="phone" name="phone" value="010-2321-2312"><br>
      
      <label for="job">직업</label>
      <select id="job" name="job" size="3">  
          <option value="학생">학생</option> 
          <option value="컴퓨터/인터넷">컴퓨터/인터넷</option> 
          <option value="언론">언론</option> 
          <option value="공무원" selected="selected">공무원</option> 
          <option value="군인">군인</option> 
          <option value="서비스업">서비스업</option> 
          <option value="교육">교육</option> 
       </select><br>
      
      <label for="chk_mail">메일/SMS 정보 수신</label>
      <input type="radio" id="chk_mail" name="chk_mail" checked> 수신 
       <input type="radio" id="chk_mail" name="chk_mail"> 수신거부<br>
      
      <label for="interest">관심분야</label>
      <input type="checkbox" id="interest" name="interest" value="생두"> 생두         
         <input type="checkbox" id="interest" name="interest" value="원두" checked> 원두         
         <input type="checkbox" id="interest" name="interest" value="로스팅"> 로스팅         
         <input type="checkbox" id="interest" name="interest" value="핸드드립" checked> 핸드드립         
         <input type="checkbox" id="interest" name="interest" value="에스프레소" checked> 에스프레소         
         <input type="checkbox" id="interest" name="interest" value="창업"> 창업<br><br>
      
      <div id="button">
         <input type="submit" value="회원가입" onclick="return check_ok()">
          <input type="reset" value="취소">
      </div>   
   </form>
</body>
</html>
 -->