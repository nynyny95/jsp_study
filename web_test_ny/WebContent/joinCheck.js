function joinCheck() {

	var userName = document.joinFrm.userName;
	var userNum = document.joinFrm.userNum;
	var userNum2 = document.joinFrm.userNum2;
	var userId = document.joinFrm.userId;
	var userPwd = document.joinFrm.userPwd;
	var userPwd2 = document.joinFrm.userPwd2;
	var userEmail = document.joinFrm.userEmail;
	var userEmail2 = document.joinFrm.userEmail2;
	var nameTest = /^[가-힣 A-z]{2,10}$/;
	var idTest = /^[A-z0-9_]{4,12}$/;
	var pwdTest = /^[A-z0-9]{4,12}$/;
	var emailTest = /^[A-z0-9_]$/;
	var emailTest2 = /^[A-z0-9]+[A-z0-9]*[\\.]{1}[A-z]$/;
	
	if (userName.value.length == 0) {
		alert("이름을 입력해주세요.");
		userName.focus();
		return false;
	} else if (!nameTest.test(userName.value)) {
		alert("이름에 특수기호를 사용할 수 없습니다.");
		userName.value = "";
		userName.focus();
		return  false;
	} else if (userNum.value.length != 6) {
		alert("주민번호 앞 6자리를 입력해주세요.");
		userNum.focus();
		return false;
	} else if (isNaN(userNum.value)) {
		alert("숫자로 입력해주세요.");
		userNum.value = "";
		userNum.focus();
		return false;
	} else if (userNum2.value.length != 7) {
		alert("주민번호 뒤 7자리를 입력해주세요.");
		userNum2.focus();
		return false;
	} else if (isNaN(userNum2.value)) {
		alert("숫자로 입력해주세요.");
		userNum2.value = "";
		userNum2.focus();
		return false;
	} else if (userId.value == "") {
		alert("아이디를 입력해주세요.");
		userId.focus();
		return false;
	} else if (!idTest.test(userId.value)) {
		alert("아이디는 4자리 이상 12자리 이하로 입력하여 주세요.\n(영문 대소문자와 숫자, 특수기호 '_' 사용 가능)");
		userId.value = "";
		userId.focus();
		return false;
	} else if (userPwd.value.length == 0) {
		alert("비밀번호를 입력해주세요.");
		userPwd.focus();
		return false;
	} else if (userPwd.value != userPwd2.value) {
		alert("비밀번호가 일치하지 않습니다. 비밀번호를 확인해주세요.");
		userPwd2.value = "";
		userPwd2.focus();
		return false;
	} else if (userPwd.value == userId.value) {
		alert("아이디와 비밀번호는 같을 수 없습니다. 다시 입력해주세요.");
		userPwd.value = "";
		userPwd2.value = "";
		userPwd.focus();
		return false;
	} else if (!pwdTest.test(userPwd.value)) {
		alert("비밀번호는 영문 대소문자와 숫자로만 4자리 이상 12자리 이하로 입력하여 주세요.");
		userPwd.value = "";
		userPwd2.value = "";
		userPwd.focus();
		return false;
	} else if (userEmail.value.length == 0) {
		alert("이메일을 입력해주세요.");
		userEmail.focus();
		return false;
	} else if (!emailTest.test(userEmail.value)) {
		alert("올바른 이메일 형식을 입력해주세요.");
		userEmail2.value = "";
		userEmail2.focus();
		return false;
	} else if (userEmail2.value.length == 0) {
		alert("이메일을 입력해주세요.");
		userEmail2.focus();
		return false;
	} else if (!emailTest2.test(userEmail2.value)) {
		alert("올바른 이메일 형식을 입력해주세요.");
		userEmail2.value = "";
		userEmail2.focus();
		return false;
	} else {
		return true;
	}
}