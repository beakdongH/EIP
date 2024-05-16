<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<link rel="stylesheet" href="style.css">
<script type="text/javascript"src="check.js"></script>
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>차량출차</h2>
<form method = "post" action="list2.jsp" name="frmm">
	<table border="1">
	<tr>
		<td>차량번호</td>
		<td>
			<select name="cno" onchange="get(this.value)">
				<option value="">차량선택</option>
				<option value="11가1111">11가1111</option>
				 
			</select>
		</td>
	</tr>
	<tr>
	<td>소유자명</td>
		<td>
			<input type="text" name="owner_name" value=""readonly>
			</td> 
			
	</tr>
	<tr>
		<td>출차시간</td>
		<td>
		<input type="text" name="departure_time"> 예) 22:22
		
	</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="button" value="입차등록" onclick="incar()">
			<input type="button" value="다시쓰기" onclick="rst()">
			</td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="button" value="출처등록" onclick="outcar()">
		<input type="button" value="다시쓰기" onclick="rst()">
	</table>

</form>
</section>



<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>