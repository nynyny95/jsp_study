function check() {
	// 돔 구조(document)로 접근하기!
//	if (document.frm.name.value == "") {
	if (document.frm.name.value.length == 0) {
		alert("이름을 입력해주세요.");
		document.frm.name.focus();
		return false;
	} else if (document.frm.number1.value.length != 6) {
		alert("주민번호 앞 6자리를 입력해주세요.");
		document.frm.number1.focus();
		return false;
	// isNaN(): is not a Number -> 숫자가 아닌지 판별해주는 함수
	} else if (isNaN(document.frm.number1.value)) {
		alert("숫자로 입력해주세요.");
		document.frm.number1.focus();
		return false;
	} else if (document.frm.number2.value.length != 7) {
		alert("주민번호 뒤 7자리를 입력해주세요.");
		document.frm.number2.focus();
		return false;
	// isNaN(): is not a Number -> 숫자가 아닌지 판별해주는 함수
	} else if (isNaN(document.frm.number2.value)) {
		alert("숫자로 입력해주세요.");
		document.frm.number2.focus();
		return false;
	} else if (document.frm.id.value == "") {
		alert("아이디를 입력해주세요.");
		document.frm.id.focus();
		return false;
	} else if (document.frm.id.value.length < 4) {
		alert("아이디를 4자리 이상 입력해주세요.");
		document.frm.id.focus();
		return false;
	} else if (document.frm.pw1.value == "") {
		alert("비밀번호를 입력해주세요.");
		document.frm.pw1.focus();
		return false;
	} else if (document.frm.pw1.value != document.frm.pw2.value) {
		alert("비밀번호가 일치하지 않습니다. 비밀번호를 확인해주세요.");
		document.frm.pw1.focus();
		return false;
	} else if (document.frm.email1.value == "" || document.frm.email2.value == "") {
		alert("이메일을 입력해주세요.");
		document.frm.email1.focus();
		return false;
	} else {
		return true;
	}
}