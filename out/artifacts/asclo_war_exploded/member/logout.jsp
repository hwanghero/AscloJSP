<%--
  Created by IntelliJ IDEA.
  User: owner
  Date: 2019-11-14
  Time: 오후 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logout</title>
</head>
<body>
<%
    session.invalidate(); // 모든세션정보 삭제
%>
<script>
    document.location.href="../index_bp.jsp";
</script>
</body>
</html>