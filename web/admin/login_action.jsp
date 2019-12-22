<%@page import="Member.AscloSQL"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String admin_id = request.getParameter("admin_id");
    String admin_pw = request.getParameter("admin_pw");

    try {
        AscloSQL MICA = AscloSQL.getInstance();
    } catch (JSchException | ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }

    int check = 0;
    try {
        check = AscloSQL.AdminLoginAsclo(admin_id, admin_pw);
    } catch (Exception e) {
        e.printStackTrace();
    }

    // 로그인
    if(check == 1){
        out.println("login success<br>");
        session.setAttribute("adminID", admin_id);
    }else{
        out.println("login failed<br>");
    }
    response.sendRedirect("index.jsp");
%>
<%=admin_id%><br>
<%=admin_pw%>
</body>
</html>