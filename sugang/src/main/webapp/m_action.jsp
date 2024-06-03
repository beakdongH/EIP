<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String name = request.getParameter("name");
String credit = request.getParameter("hakjum");
String lecturer = request.getParameter("teacher");
String week = request.getParameter("week");
String start_hour = request.getParameter("start_hour");
String end_hour = request.getParameter("end_hour");

try{
	String sql = "update course_tbl set name=?, credit=?,lecturer=?, week=?,start_hour=?,end_hour=? where id=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1,name);
	pstmt.setString(2,credit);
	pstmt.setString(3,lecturer);
	pstmt.setString(4,week);
	pstmt.setString(5,start_hour);
	pstmt.setString(6,end_hour);
	pstmt.setString(7,id);
	pstmt.executeUpdate();
	%>
	<jsp:forward page="modify.jsp">
	<%
}
catch(Exception e){
	e.printStackTrace();
}
%>