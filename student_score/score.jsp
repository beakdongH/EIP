<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>성적현황</title>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <section>
    <h2>성적현황</h2>
    <form>
        <table border="1">
            <tr>
                <td>학번</td>
                <td>이름</td>
                <td>과목</td>
                <td>과목코드</td>
                <td>교수명</td>
                <td>중간점수</td>
                <td>기말점수</td>
                <td>출석</td>
                <td>보고서</td>
                <td>기타</td>
                <td>평균</td>
                <td>총점</td>
                <td>학점</td>
            </tr>
            <%
                request.setCharacterEncoding("UTF-8");
	            try {
	                String sql = "SELECT st.stuid, sname, subname, sc.subcode, proname, midscore, finalscore, attend, report, etc, " +
	                             "TO_CHAR((midscore+finalscore+attend+report+etc)/5, '999'), " +
	                             "TO_CHAR((midscore +0.3)+(finalscore +0.3)+(attend +0.2)+(report +0.1)+(etc+0.1), '999.0'), " +
	                             "(midscore +0.3)+(finalscore +0.3)+(attend +0.2)+(report +0.1)+(etc+0.1) " +
	                             "FROM tbl_student_202210 st, tbl_score_202210 sc, tbl_subject_202210 su " +
	                             "WHERE sc.subcode=su.subcode AND st.stuid=sc.sid " +
	                             "ORDER BY sname";
	                PreparedStatement pstmt = con.prepareStatement(sql);
	                ResultSet rs = pstmt.executeQuery();
                    while(rs.next()) {
                        int sum = rs.getInt(13);
                        String grade;
                        if(sum >= 95) grade = "A+";
                        else if(sum >= 90) grade = "A";
                        else if(sum >= 85) grade = "B+";
                        else if(sum >= 80) grade = "B";
                        else if(sum >= 75) grade = "C+";
                        else if(sum >= 70) grade = "C";
                        else if(sum >= 65) grade = "D+";
                        else if(sum >= 60) grade = "D";
                        else grade = "F";
            %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getString(4) %></td>
                <td><%= rs.getString(5) %></td>
                <td><%= rs.getString(6) %></td>
                <td><%= rs.getString(7) %></td>
                <td><%= rs.getString(8) %></td>
                <td><%= rs.getString(9) %></td>
                <td><%= rs.getString(10) %></td>
                <td><%= rs.getString(11) %></td>
                <td><%= rs.getString(12) %></td>
                <td><%= grade %></td>
            </tr>
            <%
                    }
                } 
catch (SQLException e) {
	e.printStackTrace();
}
%>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>