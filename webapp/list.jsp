<%@ include file="db.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>후보조회</h2>
<form>
		<table border="1">
			<tr>
				<td>후보번호</td>
				<td>성명</td>
				<td>소속정당</td>
				<td>학력</td>
				<td>주민번호</td>
				<td>지역구</td>
				<td>대표전화</td>
			</tr>
<%
request.setCharacterEncoding("UTF-8");
try {
String sql = "SELECT m.m_no as no, m.m_name as name, p.p_name as p_name, "
            + "m.p_school as school, m.m_jumin as jumin, m.m_city as city, "
            + "p.p_tel1 as tel1, p.p_tel2 as tel2, p.p_tel3 as tel3 " 
            + "FROM tbl_member_202005 m, tbl_party_202005 p " 
            +"WHERE m.p_code = p.p_code";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery(sql);
			while (rs.next()) {
				String jumin = rs.getString("jumin");
				String school = rs.getString("school");
				switch (school) {
					case "1":
						school = "졸";
						break;
					case "2":
						school = "학사";
						break;
					case "3":
						school = "석사";
						break;
					case "4":
						school = "박사";
						break;
			}
%>
<tr>
	<td><%=rs.getString("no")%></td>
	<td><%=rs.getString("name")%></td>
	<td><%=rs.getString("p_name")%></td>
	<td><%=school%></td>
	<td><%=jumin.substring(0, 6)%>-<%=jumin.substring(6, 13)%></td>
	<td><%=rs.getString("city")%></td>
	<td><%=rs.getString("tel1")%>-<%=rs.getString("tel2")%>-<%=rs.getString("tel3")%></td>
</tr>
<%
	}
} 

catch (Exception e) {
	e.printStackTrace();
}
%>
</table>
</form>
</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>