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
	String sql="insert into course_tbl values(?,?,?,?,?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, credit);
	pstmt.setString(4, lecturer);
	pstmt.setString(5, week);
	pstmt.setString(6, start_hour);
	pstmt.setString(7, end_hour);
	pstmt.executeUpdate();
	 %>
	 <jsp:forward page="insert2.jsp"></jsp:forward>
	 <%
}
catch(Exception e){
	e.printStackTrace();
}
%>