function itemCheck() {
	if (document.frm.iname.value.length == 0) {
		alert("상품명을 입력해주세요.");
		document.frm.iname.focus();
		return false;
	}
	if (document.frm.price.value.length == 0) {
		alert("가격을 입력해주세요.");
		document.frm.price.focus();
		return false;
	}
	if (isNaN(document.frm.price.value)) {
		alert("숫자로 입력해주세요.");
		document.frm.price.value = "";
		document.frm.price.focus();
		return false;
	}
	return true;
}