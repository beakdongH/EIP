function insert() {
	if(frm.id.value.length == 0) {
		alert("교과목 코드 입력안됨");
		frm.id.focus();
		return false;
}
	else if(frm.name.value.length == 0) {
		alert("과목명 입력안됨");
		frm.name.focus();
		return false;
	}
	
	else if(frm.hakjum.value.length == 0) {
		alert("학점 입력안됨");
		frm.credit.focus();
		return false;
		
	}
	
	else if(frm.teacher.value.length == 0) {
		alert("담당강사가 입력되지 않았습니다.");
		f.lecturer.focus();
		return false;
	}
	
	
	else if(frm.week[0].checked==false && frm.week[1].checked==false &&frm.week[2].checked==false && frm.week[3].checked==false &&frm.week[4].checked==false) {
		alert("요일 입력안됨");
		frm.week[0].focus();
		return false;
	}
	
	else if(frm.start_hour.value.length == 0) {
		alert("시작 시간 입력안됨");
		frm.start_hour.focus();
		return false;
		
	}
	else if(frm.end_hour.value.length == 0) {
		alert("종료 시간 입력안됨");
		frm.end_hour.focus();
		return false;
		
	}
	
	else {
		alert("굿");
		frm.submit();
		return true;
}

}
function search(){
	window.location = 'list.jsp';
}

function modify(){ 
	alert("교과목 수정이 완료되었습니다.");
	frm.submit();
	return true;
}

function res(){
	alert("교과목 수정이 취소되었습니다.");
	document.frm.reset();
	return true;
}