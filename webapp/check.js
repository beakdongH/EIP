function joinCheck() {
    if (frm.car_number.value.length == 0) {
        alert("차량번호가 입력되지 않았습니다.");
        frm.car_number.focus();
        return false;
    }

    if (frm.owner_name.value.length == 0) {
        alert("소유자 이름이 입력되지 않았습니다.");
        frm.owner_name.focus();
        return false;
    }

    if (frm.location[0].checked == false && frm.location[1].checked == false && frm.location[2].checked == false &&
        frm.location[3].checked == false && frm.location[4].checked == false) {
        alert("주차위치가 선택되지 않았습니다.");
        frm.location.focus();
        return false;
    }

    if (frm.input_time.value.length == 0) {
        alert("입차시간이 입력되지 않았습니다.");
        frm.input_time.focus();
        return false;
    }

    alert("입차가 완료되었습니다!");
    document.frm.submit();
    return true;
}

function joinCheck1() {
    if (frmm.car_numberr.value.length == 0) {
        alert("차량번호가 입력되지 않았습니다.");
        frmm.car_numberr.focus();
        return false;
    }
    document.frmm.submit();
    return true;
}

function joinCheck2() {
    if (frmmm.cno.value == "") {
        alert("차량번호가 선택되지 않았습니다.");
        frmmm.cno.focus();
        return false;
    }

    if (frmmm.output_time.value.length == 0) {
        alert("출차시간이 입력되지 않았습니다.");
        frmmm.output_time.focus();
        return false;
    }

    alert("출차등록이 완료되었습니다!");
    document.frmmm.submit();
    return true;
}

function home() {
    window.location = "index.jsp";
}

function rst() {
    alert("정보를 지우고 처음부터 다시 입력합니다");
    document.frm.reset();
}

function get(cno) {
    if (cno == "11가1111")
        frmm.name.value = '박선수';
}
