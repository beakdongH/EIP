<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="check.js"></script>
<meta charset="UTF-8">
<title>apply</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>투표하기</h2>

<form name="frm" method="get" action="action.jsp">
<table border="1">
<tr>
<td>주민번호</td>
<td align="left" style="padding-right:100px;" ><input type="text" name="no"/> 예 : 8906153154726</td>
</tr>
<tr>
<td>성명</td>
<td align="left"><input type="text" name="name"/></td>
</tr>
<tr>
<td>후보번호</td>
<td align="left">
<select name="vno">
	<option hidden></option>
	<option value="1">김후보</option>
	<option value="2">이후보</option>
	<option value="3">박후보</option>
	<option value="4">조후보</option>
	<option value="5">최후보</option>
</select>
</td>
</tr>
<tr>
<td>투표시간</td>
<td align="left"><input type="text" name="vtime"/></td>
</tr>
<tr>
<td>투표장소</td>
<td align="left"><input type="text" name="vplace"/></td>
</tr>
		
<tr>
<td>유권자확인</td>
<td align="left">
<input type="radio" name="r_check" value="Y">확인
<input type="radio" name="r_check" value="N">미확인
</td>
</tr>
	
<tr>
<td colspan="2">
<input type="button" value="투표하기" onclick="Check()">
<input type="button" value="다시하기" onclick="Re()">
</td>
</tr>
</table>
</form>

</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>