<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>

<%
request.setCharacterEncoding("UTF-8");
String car_numbre = request.getParameter("car_number");
String car_name = request.getParameter("car_name");
String owner_name = request.getParameter("owner_name");
String location = request.getParameter("location");
String enterance_time = request.getParameter("enterance_time");
String departure_time = request.getParameter("departure_time");
String hourly_parking_fee = request.getParameter("hourly_parking_fee");

PreparedStatement pstmt = con.prepareStatement(sql);

try{
	String sql = "insert into tbl_parking_202301 values(?,?,?,?,?,?)";
}
catch(Exception e){
	e.printStackTrace();
}

%>
