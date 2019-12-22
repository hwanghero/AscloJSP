<%@ page import="Member.AscloSQL"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("euc-kr");%>
<html>
<head>
    <title>insert</title>
</head>
<body>
<%
    try {
        AscloSQL MICA = AscloSQL.getInstance();
    } catch (JSchException | ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }

    try {
        // 25~27
        AscloSQL.InsertReview("26", "강강약", "강약강약", "두루렁", "nodate", "2019-11-29");
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>
