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
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>선수 조회/수정</h2>

<form name="frm" action="m_action.jsp">
	<table border="1">
	<%
	request.setCharacterEncoding("UTF-8");
	String pid = request.getParameter("pid");
	String pname="";
	String pposition = "";
	String pdate="";
	String pgrade="";
	try{
		String sql = "select * from player where pid="+pid;
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		pname = rs.getString("pname");
		pposition = rs.getString("pposition");
		pdate = rs.getString("pdate");
		pgrade = rs.getString("pgrade");
		
	}catch(Exception e){
		e.printStackTrace();
	}


%>
		<tr>
		
			<td>선수번호</td>
			<td><input type="text" name="pid" value="<%=pid %>"></td>
		</tr>
		<tr>
			<td>선수이름</td>
			<td><input type="text" name="pname" value="<%=pname %>"></td>
		</tr>
		<tr>
			<td>선수포지션</td>
			<td><select name="pposition">
			<option value=""></option>
			<option value="투수" <%=pposition.equals("투수") ? "selected" : ""%>>투수</option>
			<option value="내야수" <%=pposition.equals("내야수") ? "selected" : ""%>>내야수</option>
			<option value="외야수" <%=pposition.equals("외야수") ? "selected" : ""%>>외야수</option>
			<option value="포수" <%=pposition.equals("포수") ? "selected" : ""%>>포수</option>
			
			</select>
			</td>
		</tr>
		
		<tr>
			<td>선수등록일</td>
			<td><input type="text" name="pdate" value="<%=pdate %>"></td>
		</tr>
		<tr>
			<td>선수등급</td>
			<td><input type="radio" name="pgrade" value ="S"<%=pgrade.equals("S") ? "checked" : ""%>>S
			<input type="radio" name="pgrade" value ="A"<%=pgrade.equals("A") ? "checked" : ""%>>A
			<input type="radio" name="pgrade" value ="B"<%=pgrade.equals("B") ? "checked" : ""%>>B
			<input type="radio" name="pgrade" value ="C"<%=pgrade.equals("C") ? "checked" : ""%>>C
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center">
			<input type="button" value="등록" onclick="m_insert()">
			<input type="button" value="다시쓰기" onclick="m_res()">
			</td>
		</tr>
			
	
	</table>

</form>

</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>