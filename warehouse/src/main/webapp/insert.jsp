<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
<script src = "check.js"></script>
<link href="style.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<%
try{
	String sql = "select max(t_no) from tbl_inout_202002"; 
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	rs.next();
	Integer cnt = rs.getInt(1)+1;
%>
	<h2>입출고등록</h2>
	<form method="get" action="i_action.jsp" name="frm">
		<table border="1">
			<tr>
					<td align="center">입출고번호</td>
					<td><input type="text" name="t_no" >예)20210001</td>
			</tr>
			<tr>
					<td align="center">제품코드</td>
					<td><input type="text" name="p_code"></td>
			</tr>
			
			<tr>
				<td align="center">입출고구분</td>
					<td><input type="radio" name="t_type" value="I" checked>입고
					<input type="radio" name="t_type" value="O">출고</td>
			</tr>
			
			
			
			<tr>
					<td align="center">수량</td>
					<td><input type="text" name="t_cnt"></td>
			</tr>
			<tr>
			<td align="center">거래일자</td>
			<td><input type="date" name="t_date"></td>
				
				
				
				
				</tr>
			<tr>
			<td align="center">거래처</td>
			<td>
					<select name="c_code"> 
					<option value="  ">거레처 선택</option>
					<option value="10">서울 공장</option>
					<option value="20">울산 공장</option>
					<option value="30">부산 상사</option>
					<option value="40">광주 상사</option>
					<option value="50">대전 상사</option>
					</select>
			</td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="button" onclick="checking()" value="입출고등록"> 
			    <input type="button" onclick="reseting()" value="다시쓰기"> </td>
			</tr>
		
		<% 
		}
		catch(Exception e){
			e.printStackTrace();
		}
		%>
		</table>
</form>
	</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>