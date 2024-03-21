<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<link rel="stylesheet" href = "style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>	
<script type="text/javascript" src="check.js"></script>
<section>
<h2> 오디션 등록</h2>
<form name = "frm" action="i_action.jsp">
<table border="1">
          <tr>
                <td> 참가번호 </td>
                <td style="text-align : left"> <input type="text" name ="artist_id"> </td>
          </tr>
          <tr>
                <td> 참가자명 </td>
                <td style="text-align : left"> <input type="text" name ="artist_name"> </td>
          </tr>
          <tr>
                <td> 생년월일 </td>
                <td style="text-align : left"> 
                	<input type="text" name ="date1"> 
                	<input type="text" name ="date2">
                	<input type="text" name ="date3"></td>
          </tr>
          <tr>
                <td> 성별 </td>
                <td style="text-align : left">
                	<input type="radio" name="gender" value="M"> 남성
                	<input type="radio" name="gender" value="F"> 여성
                </td>
          </tr>
          <tr>
                <td> 특기 </td>
                <td style="text-align : left"> 
					<select name="talent">
						<option value=""> 특기선택 </option>
						<option value="1"> 보컬</option>
						<option value="2"> 댄스</option>
						<option value="3"> 랩</option>
					</select>
          </td>
          <tr>
                <td> 소속사 </td>
                <td style="text-align : left">
                	<input type="text" name="agency"></td>
                	
          </tr>
          <tr>
          	<td colspan = "2">
          		<input type="button" value="오디션등록" onclick="insertCheck()">
          		<input type="button" value="다시쓰기" onclick="res()">
          </td>
          </tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
