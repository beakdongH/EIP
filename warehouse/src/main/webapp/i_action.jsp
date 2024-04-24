<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "db.jsp" %>

<% 
request.setCharacterEncoding("UTF-8");

String t_no = request.getParameter("t_no");
String p_code =request.getParameter("p_code");
String t_type=request.getParameter("t_type");
String t_cnt=request.getParameter("t_cnt");
String t_date = request.getParameter("t_date"); 
String c_code = request.getParameter("c_code"); 

try{
	String sql = "insert into tbl_inout_202002 values(?,?,?,?,?,?)";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1,t_no);
	pstmt.setString(2,p_code);
	pstmt.setString(3,t_type);
	pstmt.setString(4,t_cnt);
	pstmt.setString(5,t_date);
	pstmt.setString(6,c_code);
	pstmt.executeUpdate();

}
catch(Exception e){
	e.printStackTrace();
}

%>
<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>