/**
 * 
 */
function isJoin() {
	if (document.frm.userid.value == "") {
		alert("아이디를 입력해주세요.");
		document.frm.userid.focus();
		return false;
	} else if (document.frm.userpw.value == "") {
		alert("비밀번호를 입력해주세요.");
		document.frm.userpw.focus();
		return false;
	} else {
		return true;
	}
}