<%@page import="java.sql.PreparedStatement"%>
<%@ include file="db.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>리스트</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>제품조회</h2>
<form>
	<table border = "1">
		<tr>
			<td>제품코드</td>
			<td>제품명</td>
			<td>사이즈</td>
			<td>매입단가</td>
			<td>출고단가</td>
		</tr>
<%
	request.setCharacterEncoding("UTF-8");
	try{
		String sql = "select * from tbl_product_202002";
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			%>
			<tr>
				<td> <%=rs.getString(1)%></td>
				<td> <%=rs.getString(2)%></td>
				<td> <%=rs.getString(3)%></td>
				<td> <%=rs.getString(4)%></td>
				<td> <%=rs.getString(5)%></td>
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