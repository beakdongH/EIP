<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>

<%
request.setCharacterEncoding("UTF-8");

String pidString = request.getParameter("pid");
int pid = Integer.parseInt(pidString);

try {
    String sql = "delete from player where pid=?";
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setInt(1, pid);
    pstmt.executeUpdate();
}
catch(Exception e) {
    e.printStackTrace();
}
%>
<jsp:forward page="list.jsp"></jsp:forward>
