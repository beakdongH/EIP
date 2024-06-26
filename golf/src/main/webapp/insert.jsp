<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>Ie</title>
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>강사조회</h2>
	<form name="frm" action="i_action.jsp">
		<table border="1">
			<tr>
				<td>수강월</td>
				<td><input type="text" name="regist_month">예)202203</td>
			</tr>
			<tr>
				<td>회원명</td>
				<td>
					<select name="c_name" onchange="def1(this.value)">
						<option value=""></option>
						<option value="10001">홍길동</option>
						<option value="10002">장발장</option>
						<option value="10003">임꺽정</option>
						<option value="20001">성춘향</option>
						<option value="20002">이몽룡</option>
					
					
					</select>
				</td>
			</tr>
			<tr>
				<td>회원번호</td>
				<td><input type="text" id="c_no" name="c_no" readonly></td>
			</tr>
			<tr>
				<td>강의장소</td>
				<td>
					<select name="class_area">
						<option value=""></option>
						<option value="서울본원">서울본원</option>
						<option value="성남본원">성남본원</option>
						<option value="대전본원">대전본원</option>
						<option value="부산본원">부산본원</option>
						<option value="서대구본원">서대구본원</option>
					
					</select>
					</td>
			</tr>
			<tr>
				<td>강의명</td>
				<td>
				<select name="class_name" onchange="def2(this.value)">
						<option value=""></option>
						<option value="100000">초급반</option>
						<option value="200000">중급반</option>
						<option value="300000">고급반</option>
						<option value="400000">심화반</option>
					
					
					</select>
					</td>
			</tr>
			<tr>
				<td>수강료</td>
				<td><input type="text" id="tuition" name="tuition" readonly>원</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;">
				<input type="button" value="수강신청" onclick="insert()">
				<input type="button" value="다시쓰기" onclick="res()"></td>
			</tr>
				
				
				
				
				
		
		</table>
	</form>

</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>