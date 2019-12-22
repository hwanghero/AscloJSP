<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: owner
  Date: 2019-12-07
  Time: 오전 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String basket_id = request.getParameter("id");
    ArrayList<String[][]> list = (ArrayList) session.getAttribute("productlist");
    list.remove(Integer.parseInt(basket_id));
    session.setAttribute("productlist", list);
    int i=0;
    while(list.size()>i) i++;
    session.setAttribute("Basket_count", Integer.toString(i));
    response.sendRedirect("basket.jsp");
%>
</body>
</html>
