
<%@page import="Member.AscloSQL"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.*" %>

<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>

<!--
	아이디 중복체크를 만들어야합니다.

	받아올때 값
	
	아이디 member_id
	비밀번호 passwd
	비밀번호 확인 user_passwd_confirm
	비밀번호 확인 질문 hint
	비밀번호 확인 답변 hint_answer
	이름 name
	휴대전화 mobile[]
	이메일 email1
	생년월일 birth_year
	
	쿼리 생성
	
	CREATE TABLE asclo_user(
		member_id VARCHAR(20) NOT NULL,
		passwd VARCHAR(20) NOT NULL,
		name VARCHAR(10) NOT NULL,
		phone VARCHAR(11),
		email VARCHAR(20),
		birth_year VARCHAR(20),
		hint VARCHAR(10),
		hint_answer VARCHAR(20)
	);
!-->

<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="refresh" content="1; url=../index_bp.jsp">
	<title>test</title>
</head>
<body>
	<%
		String member_id = request.getParameter("member_id");
		String passwd = request.getParameter("passwd");
		String user_passwd_confirm = request.getParameter("user_passwd_confirm");
		String hint = request.getParameter("hint");
		String hint_answer = request.getParameter("hint_answer");
		String name = request.getParameter("name");
		String mobile1 = request.getParameter("mobile1");
		String mobile2 = request.getParameter("mobile2");
		String mobile3 = request.getParameter("mobile3");
		
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		
		String birth_year = request.getParameter("birth_year");
		String birth_month = request.getParameter("birth_month");
		String birth_day = request.getParameter("birth_day");

		// 아이디, 패스워드, 휴대폰, 이메일, 생일, 힌트, 힌트답
        try {
            AscloSQL MICA = AscloSQL.getInstance();
        } catch (JSchException | ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        try {
            AscloSQL.InsertID(member_id, passwd, name, mobile1+mobile2+mobile3, email1+"@"+email2, birth_year+birth_month+birth_day, hint, hint_answer);
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
	
	아이디 <%=member_id%><br>
	비번 <%=passwd%><br>
	비번확인 <%=user_passwd_confirm%><br>
	비번찾기질문 <%=hint%><br>
	비번찾기대답 <%=hint_answer%><br>
	이름 <%=name%><br>
	휴대전화 <%=mobile1%>-<%=mobile2%>-<%=mobile3%><br>
	이메일 <%=email1%>@<%=email2%><br>
	생년월일 <%=birth_year%>/<%=birth_month%>/<%=birth_day%><br>
	
	회원가입완료
</body>
</html>