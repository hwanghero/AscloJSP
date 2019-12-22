<%@page import="Member.AscloSQL"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
    AscloSQL MICA = AscloSQL.getInstance();
    String admin_id = (String) session.getAttribute("adminID");
    String admin_level = AscloSQL.getAdminlevel(admin_id);

    if (admin_id == null) {
        response.sendRedirect("login.jsp");
    }
%>
<html>
<head>
    <title>admin main page</title>
</head>
<body>
로그인한 어드민아이디: <%=admin_id%><br>
어드민 레벨: <%=admin_level%><p>
    <a href="dress_insert_form.jsp">상품 작성</a>
</body>
</html>