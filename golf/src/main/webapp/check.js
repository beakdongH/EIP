function insert(){
	if(frm.regist_month.value.length == 0){
		alert("수강월이 입력되지않았습니다");
		frm.month.focus();
		return true;
		
	}
	else if(frm.c_name.value.length == 0){
		alert("회원명이 입력되지않았습니다");
		frm.m_name.focus();
		return true;
		
	}
	else if(frm.class_area.value.length == 0){
		alert("강의장소가 입력되지않았습니다");
		frm.c_area.focus();
		return true;
		
	}
	else if(frm.class_name.value.length == 0){
		alert("강의명이 입력되지않았습니다");
		frm.c_name.focus();
		return true;
		
	}
	else if(frm.tuition.value.length == 0){
		alert("도이 입력되지않았습니다");
		frm.price.focus();
		return true;
		
	}
	else{
		alert("입력완료!");
		document.frm.submit();
		return true;
	}
	
	
}

function res(){
	alert("다시 입력합니다");
	document.frm.reset();
	return true;
	
}

function def1(m_name){
	document.getElementById("c_no").value = m_name;
	c_num = m_name;
	
}

function def2(cname){
	if(c_num>=20000){
			document.getElementById("tuition").value = cname/2;

	}
	else{
			document.getElementById("tuition").value = cname;

	}
	
}