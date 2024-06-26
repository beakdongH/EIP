function insert(){
	
	if(frm.pname.value.length==0){
		alert("선수번호 입력안됨");
		frm.pname.focus();	
		return false;
	}
	else if(frm.pposition.value==0){
		alert("포지션 입력안됨");
		frm.pposition.focus();	
		return false;
	}
	else if(frm.pdate.value.length==0){
		alert("날짜 입력안됨");
		frm.pdate.focus();	
		return false;
	}
	else if(frm.pgrade.value.length==0){
		alert("등급 입력안됨");
		frm.pgrade.focus();	
		return false;
	}
	else{
		alert("성공");
		document.frm.submit();
		return true;
	}
	
	
}

function m_insert(){
	alert("수정 성공");
		document.frm.submit();
		return true;
	
}

function m_res(){
	alert("정보수정 다시");
	document.frm.reset();
	return false;
}

function res(){
	alert("다시");
	document.frm.reset();
	return false;
}