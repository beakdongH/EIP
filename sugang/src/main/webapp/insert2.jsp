<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="check.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2> 교과목 추가 </h2>
<form name="frm" action="i_action.jsp" method="get">
<input type="hidden" name="mode" value="insert">
<table border="1">
	<tr>
		<td>과목코드</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>과목명</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>학점</td>
		<td><input type="text" name="hakjum"></td>
	</tr>
	<tr>
		<td>담당선생님</td>
		<td>
		<select name = "teacher">
			<option value="">담당선생선택</option>
			<option value="1">진국어</option>
			<option value="2">차영어</option>
			<option value="3">구전공</option>
			<option value="4">손전공</option>
			<option value="5">이전공</option>
			<option value="6">정전공</option>
		
		</select></td>
	</tr>
	<tr>
		<td>요일</td>
		<td>
			<input type="radio" name="week" value="1">월
			<input type="radio" name="week" value="2">화
			<input type="radio" name="week" value="3">수
			<input type="radio" name="week" value="4">목
			<input type="radio" name="week" value="5">금
		</td>
	</tr>
	<tr>
		<td>시작시간</td>
		<td><input type="text" name="start_hour"></td>
	</tr>
	<tr>
		<td>종료시간</td>
		<td><input type="text" name="end_hour"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="button" value="등록" onclick="insert()">
			<input type="button" value="종료" onclick="res()">
		</td>
	</tr>
	
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>