<%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	request.setCharacterEncoding("UTF-8");

	String no = request.getParameter("no");
	String name = request.getParameter("name");
	String vno = request.getParameter("vno");
	String vtime = request.getParameter("vtime");
	String vplace = request.getParameter("vplace");
	String r_check = request.getParameter("r_check");
	
	try{
		String sql ="INSERT INTO TBL_VOTE_202005 values(?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, no);
		pstmt.setString(2, name);
		pstmt.setString(3, vno);
		pstmt.setString(4, vtime);
		pstmt.setString(5, vplace);
		pstmt.setString(6, r_check);
		
		pstmt.executeUpdate();	
		
		con.commit();
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>
	
<jsp:forward page="index.jsp"></jsp:forward>