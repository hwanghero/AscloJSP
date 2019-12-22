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
        AscloSQL.InsertReview("22", "test_id", "테스트ㅋㅋ", "내용ㅁㄴㅇ", "imgname", "2019-11-28");
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>
