<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html
	PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="joinCheck.js"></script>
<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
/** API 서비스 제공항목 확대 (2017.02) **/
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	document.joinFrm.roadAddrPart1.value = roadAddrPart1;
	document.joinFrm.roadAddrPart2.value = roadAddrPart2;
	document.joinFrm.addrDetail.value = addrDetail;
	document.joinFrm.zipNo.value = zipNo;
}
</script>
</head>
<body>
	<header>
		<span>아옹다옹</span>
	</header>
	<nav>
		<ul>
			<li><a href="#">Home</a></li>
			<li><a href="#">Event</a></li>
			<li><a href="#">Login</a></li>
			<li><a href="#">Join</a></li>
		</ul>
	</nav>
	<article>
		<div>
			<form action="TestLoginServlet" method="post" name="joinFrm">
				<label for="userName">이름: </label>
				<input type="text" name="userName" id="userName" placeholder="이름을 입력하세요."><br>

				<label for="userNum">주민등록번호: </label>
				<input type="text" name="userNum" id="userNum" placeholder="주민번호 앞 6자리"><b>-</b>
				<input type="password" name="userNum2" id="userNum2" placeholder="주민번호 뒤 7자리"><br>

				<label for="userId">아이디: </label>
				<input type="text" name="userId" id="userId" placeholder="아이디를 입력하세요.">
				<input
					type="button"
					name="userIdCor"
					id="userIdCor"
					value="중복확인"
					onclick="overlap();"
				><br>

				<label for="userPwd">비밀번호: </label>
				<input type="password" name="userPwd" id="userPwd" placeholder="비밀번호를 입력하세요.">
				<input type="password" name="userPwd2" id="userPwd2" placeholder="비밀번호를 다시 입력하세요."><br>

				<label for="userEmail">이메일: </label>
				<input type="text" name="userEmail" id="userEmail"><b>@</b>
				<input type="text" name="userEmail2" id="userEmail2">
				<select name="userEmail3" id="userEmail3" onchange="email_change()">
					<option value="1">직접입력</option>
					<option value="naver.com">네이버</option>
					<option value="daum.net">다음</option>
					<option value="gmail.com">구글</option>
				</select><br>

				<!-- <label for="userAddr">주소: </label>
				<input type="text" name="userAddr" id="userAddr" placeholder="우편번호를 입력하세요.">
				<input type="text" name="userAddr2" id="userAddr2" placeholder="도로명 주소로 입력하세요."><br>
				<input type="text" name="userAddr3" id="userAddr3" placeholder="상세 주소를 입력하세요."><br> -->
				<label for="userAddr">주소: </label>
				<input type="hidden" id="confmKey" name="confmKey" value=""  >
				<input type="text" id="zipNo" name="zipNo" readonly>
				<input type="button" value="주소검색" onclick="goPopup();">
				<input type="text" id="roadAddrPart1" name="roadAddrPart1">
				<input type="text" id="addrDetail" name="addrDetail" value="">
				<input type="text" id="roadAddrPart2" name="roadAddrPart2" value="">
				<br>
				
				<label for="userCall">핸드폰번호: </label>
				<input type="text" name="userCall" id="userCall"><b>-</b>
				<input type="text" name="userCall2" id="userCall2"><b>-</b>
				<input type="text" name="userCall3" id="userCall3"><br>
				
				<label for="userJob">직업: </label>
				<select name="userJob" id="userJob">
					<option value="1">선택하세요.</option>
					<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
					<option value="전기/기계">전기/기계</option>
					<option value="기획/홍보">기획/홍보</option>
					<option value="자영업">자영업</option>
					<option value="교육">교육</option>
					<option value="대학생">대학생</option>
					<option value="회계/세무">회계/세무</option>
					<option value="인사/총무">인사/총무</option>
					<option value="취업준비생">취업준비생</option>
					<option value="주부">주부</option>
					<option value="예체능">예체능</option>
					<option value="기타">기타</option>
				</select><br>
				
				<label for="userRadio">메일/SMS 정보 수신: </label>
				<input type="radio" name="userRadio" id="userRadio" value="수신동의" checked="checked">수신동의
				<input type="radio" name="userRadio" id="userRadio" value="수신거절">수신거절<br>
				
				<label for="userInter">관심분야: </label>
				<input type="checkbox" name="userInter" id="userInter" value="Java">Java
				<input type="checkbox" name="userInter" id="userInter" value="C / C++">C / C++
				<input type="checkbox" name="userInter" id="userInter" value="파이썬">파이썬<br>
				<input type="checkbox" name="userInter" id="userInter" value="HTML">HTML
				<input type="checkbox" name="userInter" id="userInter" value="CSS">CSS
				<input type="checkbox" name="userInter" id="userInter" value="Spring">Spring<br>
				
				<input type="submit" value="회원가입" onclick="return joinCheck()"> &nbsp;
				<input type="button" value="취소" onclick="backPage();">
			</form>
		</div>
	</article>
	
	<script type="text/javascript">
		function overlap() {
			// 데이터베이스와 연결하여 입력값과 일치하는 아이디가 있는 경우 펄스 반환, 없는 경우 트루 반환
			alert("사용 가능한 아이디입니다.");
		}
	
		function email_change() {
			var userEmail2 = document.joinFrm.userEmail2;
			var userEmail3 = document.joinFrm.userEmail3;
			
			if (userEmail3.options[userEmail3.selectedIndex].value == "1") {
				userEmail2.disabled = false;
				userEmail2.value = "";
			} else {
				userEmail2.disabled = true;
				userEmail2.value = userEmail3.options[userEmail3.selectedIndex].value;
			}
		}
	</script>
</body>
</html>