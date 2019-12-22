<%@page import="Member.AscloSQL"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = (String)session.getAttribute("sessionID");
    String pw = request.getParameter("passwd");
    String mobile1 = request.getParameter("mobile1");
    String mobile2 = request.getParameter("mobile2");
    String mobile3 = request.getParameter("mobile3");
    String email1 = request.getParameter("email1");
    String email2 = request.getParameter("email2");
    String hint = request.getParameter("hint");
    String hint_answer = request.getParameter("hint_answer");

    int check = 0;
    try {
        AscloSQL MICA = AscloSQL.getInstance();
    } catch (JSchException | ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
    try {
        check = AscloSQL.setAsclouser(id, pw, mobile1+mobile2+mobile3, email1+"@"+email2, hint, hint_answer);
    } catch (Exception e) {
        e.printStackTrace();
    }

    if(check == 1){
        out.println(
        "<script>\n" +
        "alert('success');"+
        "document.location.href=\"../index_bp.jsp\";\n" +
        "</script>");
    }else{
        out.println(
        "<script>\n" +
        "alert('failed');"+
        "document.location.href=\"../index_bp.jsp\";\n" +
        "</script>");
    }
%>
</body>
</html>
