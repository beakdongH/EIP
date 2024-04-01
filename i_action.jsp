<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
String reavno = request.getParameter("reavno");
String empno = request.getParameter("empno");
String reavdate = request.getParameter("reavdate");
String seatno = request.getParameter("seatno");

try {
	String sql = "insert into tbl_resv_202108 values(?,?,?,?)";
	PreparedStatement patmt = con.prepareStatement(sql);
	patmt.setString(1,reavno);
	patmt.setString(2,empno);
	patmt.setString(3,reavdate);
	patmt.setString(4,seatno);
	patmt.executeUpdate();
}

catch (Exception e){
	e.printStackTrace();
}


%>
<jsp:forward page = "insert.jsp"></jsp:forward>