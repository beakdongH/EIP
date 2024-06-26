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
				<td>강의명</td>
				<td>강사명</td>
				<td>총매출</td>
			</tr>
			<%
			request.setCharacterEncoding("UTF-8");
			try{
				String sql = "select t.teacher_code,t.class_name,t.teacher_name,sum(c.tuition) "
						+"from teacher t, class c "
						+"where t.teacher_code = c.teacher_code "
						+"group by t.teacher_code, t.class_name, t.teacher_name order by t.teacher_code";
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()){
					%>
					<tr>
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td style="text-align: center"><%=rs.getString(3) %></td>
						<td style="text-align: center">\<%=rs.getString(4) %></td>
					
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