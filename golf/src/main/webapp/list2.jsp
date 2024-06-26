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
				<td>수강월</td>
				<td>회원번호</td>
				<td>회원명</td>
				<td>강의명</td>
				<td>강의장소</td>
				<td>수강료</td>
				<td>등급</td>
			</tr>
			<%
			request.setCharacterEncoding("UTF-8");
			try{
				String sql = "select c.regist_month, c.c_no, m.c_name, t.class_name,c.class_area,t.class_price,m.grade "
						+"from teacher t, member m, class c "
						+"where m.c_no=c.c_no and t.teacher_code = c.teacher_code";
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()){
					String date = rs.getString(1);
					String date2 = date.substring(0,4)+"년"+date.substring(4,6)+"월";
					%>
					<tr>
						<td><%=date2 %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td>\<%=rs.getString(6) %></td>
						<td><%=rs.getString(7) %></td>										
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