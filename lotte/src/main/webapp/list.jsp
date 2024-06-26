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
<h2>선수 조회/수정</h2>
<form>
	<table border="1">
		<tr>
			<td>선수번호</td>
			<td>선수이름</td>
			<td>선수포지션</td>
			<td>선수등록일</td>
			<td>선수등급</td>
			<td>삭제</td>
		</tr>
		<%
		request.setCharacterEncoding("UTF-8");
		try{
			String sql = "select * from player";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();	
			while(rs.next()){
				String date = rs.getString(4);
				date = date.substring(0,4)+"년"+date.substring(4,6)+"월"+date.substring(6,8)+"일";
				%>
				<tr style="text-align: center;">
					<td><a href="modify?pid=<%=rs.getString(1) %>"><%=rs.getString(1) %></a></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=date %></td>
					<td><%=rs.getString(5) %></td>
					<td><a href="delete?pid=<%=rs.getString(1) %>">삭제</a></td>
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