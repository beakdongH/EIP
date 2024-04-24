function checking(){
	var frm = document.frm;
	if(frm.p_code.values.length==0){
		alert("제품코드가 입력되지 않았습니다.");
		frm.p_code.focus();
		return false;
	}
	else if(frm.t_cnt.values.length==0){
		alert("수량이 입력되지 않았습니다.");
		frm.t_cnt.focus();		
		return false;
	}
	else if(frm.t_type.values.length==0){
		alert("입출고 구분이 입력되지 않았습니다.");
		frm.t_type.focus();
		return false;
	}	
	else if(frm.t_date.values.length==0){
		alert("거래일자가 입력되지 않았습니다.");
		frm.t_date.focus();		
		return false;
	}
	else if(frm.c_code.values.length==0){
		alert("거래처가 선택되지 않았습니다.");
		frm.c_code.focus();
		return false;
	}
	else{
		alert("정보가 정상적으로 입력되었습니다.");
		return true;
	}
	
}

function Re(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
}