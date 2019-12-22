<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
    if (session.getAttribute("adminID") != null) {
        response.sendRedirect("index.jsp");
    }
%>
<html>
<head>
    <title>asclo admin login page</title>
</head>
<body>
<form method="post" action="login_action.jsp" name="admin_form">
    아이디 <input type="text" name="admin_id" value="" size="20"><p>
    비밀번호 <input type="text" name="admin_pw" value="" size="20"><p>
    <input type="submit" value="로그인">
</form>
</body>
</html>