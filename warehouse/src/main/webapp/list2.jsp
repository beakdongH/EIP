<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>list22</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section>
<h2>입출고내역</h2>
	<table border="1">
		<tr>
			<td>입출고번호</td>
			<td>제품코드</td>
			<td>제품명</td>
			<td>입출고구분</td>
			<td>수량</td>
			<td>거래처</td>
			<td>거래일자</td>
		</tr>
	<%
		request.setCharacterEncoding("UTF-8");
	try{
		String sql = "select io.t_no, pr.p_code, pr.p_name, io.t_type, io.t_cnt, co.c_name, io.t_date "
				+ "from tbl_company_202002 co ,tbl_inout_202002 io, tbl_product_202002 pr "
				+ "where io.p_code = pr.p_code and io.c_code=co.c_code "
				+ "order by io.p_code"; 
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
			String type = rs.getString(4);
			if(type.equals("1")) type="입고";
			else if(type.equals("0")) type="출고";
			
			%>
			<tr>
				<td> <%= rs.getString(1) %></td>
				<td> <%= rs.getString(2) %></td>
				<td> <%= rs.getString(3)    nn%></td>
				<td> <%= rs.getString(4) %></td>
				<td> <%= rs.getString(5) %></td>
				<td> <%= rs.getString(6) %></td>
				<td> <%= rs.getString(7) %></td>
				
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