<%@ page import="java.sql.*, javax.naming.InitialContext, javax.sql.DataSource" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    Connection con = null;
    try {
        InitialContext ctx = new InitialContext();
        DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/myDataSource");
        con = ds.getConnection();
    } catch (Exception e) {
        e.printStackTrace();
        // Handle exception as needed
    }
%>
