<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "db.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이익</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>이익통계</h2>
<%
request.setCharacterEncoding("UTF-8");
String empno = request.getParameter("empno2");
%>
<table border="1">
			<tr align="center">
				<td>제품코드</td>
				<td>제품명</td>
				<td>출고수량</td>
				<td>출고매출이익</td>
			</tr>

			<%
try{
	String sql = "SELECT io.p_code,p_name,io.t_cnt,p_outcost,p_incost " 
	            + "FROM tbl_inout_202002 io,  tbl_product_202002 pr " 
		   		+ "WHERE t_type = 'O' and io.p_code = pr.p_code " 
		   		+ "ORDER BY io.p_code";
    
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	
	while (rs.next()){
		Integer profit = 0 ;
		profit =rs.getInt(3) *(rs.getInt(4)-rs.getInt(5));
		
%>
		<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td>￦<%=profit.toString()%></td>
		</tr>
<%	
	}

	
	
	
	
	
	
	
	
	
}
catch(Exception e){
	e.printStackTrace();
}
%>
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>