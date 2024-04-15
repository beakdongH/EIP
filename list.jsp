<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file ="db.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h2><b>회원목록조회/수정</b></h2>
	<form>
		<table border="1">
			<tr>
				<td>회원번호</td>
				<td>회원성명</td>
				<td>전화번호</td>
				<td>가입일자</td>
				<td>고객등급</td>
				<td>거주지역</td>
			</tr>
			<%
				request.setCharacterEncoding("UTF-8");
				String sql = "select custno, custname, phone, address, joindate, grade, city from member_tbl_02";
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()){
					String grade = rs.getString(6);
					switch(grade){
						case "A":
							grade = "VIP"; break;
						case "B":
							grade = "일반"; break;
						case "C":
							grade = "직원"; break;
					}
					%>
					<tr>
						<td> <a href="modify.jsp?mod_custno=" + rs.getString(1) + ">"+rs.getString(1)+"</a></td>
				}
			
			
			
			
			<%
			%>
		
		
		
		
		</table>
	
	
	</form>


</section>


</body>
</html>