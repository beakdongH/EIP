<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
String empno = request.getParameter("empno");

try{
	String sql = ("select * from tbl_emp_201808 whwer empno=?");
	PreparedStatement patmt = con.prepareStatement(sql);
	patmt.setString(2,empno);
	ResultSet rs = patmt.executeQuery();
	
	if(rs.next()){
		empno=rs.getString(1);
		%>
		<jsp:forward page="success.jsp"></jsp:forward>
		<%
	}
	else{
		%>
		<jsp:forward page="fail.jsp"></jsp:forward>
		<%
	}
}

catch (Exception e){
	e.printStackTrace();
}


%>
	