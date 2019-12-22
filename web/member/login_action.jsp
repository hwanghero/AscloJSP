<%@page import="Member.AscloSQL"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
	<meta charset="UTF-8"> 
	<title>test</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String member_id = request.getParameter("member_id");
		String member_passwd = request.getParameter("member_passwd");
		String check_save_id = request.getParameter("check_save_id");

		try {
			AscloSQL MICA = AscloSQL.getInstance();
		} catch (JSchException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		int check = 0;
		try {
			check = AscloSQL.LoginAsclo(member_id, member_passwd);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 로그인
		if(check == 1){
			out.println("login success<br>");
			session.setAttribute("sessionID", member_id);
			response.sendRedirect("../index_bp.jsp");
		}else{
			out.println("login failed<br>");
		}
	%>

	아이디 <%=member_id%><br>
	비번 <%=member_passwd%><br>
	로그인저장 <%=check_save_id%><br>
	체크 <%=check%>
</body>
</html>