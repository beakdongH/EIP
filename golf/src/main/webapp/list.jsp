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
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>강사조회</h2>
	<form>
		<table border="1">
			<tr>
				<td>강사코드</td>
				<td>강사명</td>
				<td>강의명</td>
				<td>수강료</td>
				<td>강사자격취득일</td>
			</tr>
			<%
			request.setCharacterEncoding("UTF-8");
			try{
				String sql = "select * from teacher";
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()){
					String date = rs.getString(5);
					String date2 = date.substring(0,4)+"년"+date.substring(4,6)+"월"+date.substring(6,8)+"일";
					%>
					<tr>
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td>\<%=rs.getString(4) %></td>
						<td><%=date2 %></td>
					
					</tr>
					<%
				}
			}catch(Exception e){
				e.printStackTrace();
			}
			
			
			
			%>
		
		</table>
	</form>

</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>