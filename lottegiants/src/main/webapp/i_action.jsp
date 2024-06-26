<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="db.jsp" %>

<%
request.setCharacterEncoding("UTF-8");

String pid = request.getParameter("pid");
String pname = request.getParameter("pname");
String pposition = request.getParameter("pposition");
String pdate = request.getParameter("pdate");
String pgrade = request.getParameter("pgrade");

try{
	String sql = "insert into player values(?,?,?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setString	(1, pid);
	pstmt.setString(2, pname);
	pstmt.setString(3, pposition);
	pstmt.setString(4, pdate);
	pstmt.setString(5, pgrade);
	pstmt.executeUpdate();
}
catch(Exception e){
	e.printStackTrace();
}
%>
<jsp:forward page="insert.jsp"></jsp:forward>