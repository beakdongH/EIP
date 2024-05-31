<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<title>ranking</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>후보자등수</h2>

<form>
<table border="1">
		<tr>
			<td>후보번호</td>
			<td>성명</td>
			<td>총투표건수</td>
		</tr>
		<%
		try{
			request.setCharacterEncoding("UTF-8");

	String sql = "SELECT m.m_no as no, m.m_name as name, count(v.m_no) as count " + 
	             "FROM tbl_vote_202005 v, tbl_member_202005 m " + 
	             "WHERE v.m_no = m.m_no and v.v_confirm = 'Y' " +
	             "GROUP BY m.m_no, m.m_name " +
	             "ORDER BY count desc";
	PreparedStatement pstmt = con.prepareStatement(sql);			
	ResultSet rs = pstmt.executeQuery(sql);
	while(rs.next()){
		%>
				<tr>
					<td><%= rs.getString("no") %></td>
					<td><%= rs.getString("name") %></td>
					<td><%= rs.getString("count") %></td>
				</tr>
		<%		
			}
	
	
	
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