<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    ArrayList<String> list = (ArrayList) session.getAttribute("productlist");
    list.remove(Integer.parseInt(id));
    session.setAttribute("productlist", list);

    int i=0;

    while(list.size()>i) i++;

    session.setAttribute("Basket_count", Integer.toString(i));

    response.sendRedirect("basket.jsp");
%>

<%=id%> 삭제
</body>
</html>
