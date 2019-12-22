<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 25/11/2019
  Time: 11:59 오전
  To change this template use File | Settings | File Templates.
--%>
<%@page import="Member.AscloSQL"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.text.*"%>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("euc-kr");%>
<html>
<head>
</head>
<body>
<%
    String a = request.getParameter("spread_flag");
    if(a.equals("T")){
        out.print("why");
    }
%>
test
</body>
</html>