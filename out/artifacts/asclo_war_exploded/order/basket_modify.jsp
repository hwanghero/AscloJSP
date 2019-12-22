<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: owner
  Date: 2019-12-06
  Time: 오후 11:40
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
    String basket_amount = request.getParameter("amount");

    ArrayList<String[][]> list = (ArrayList) session.getAttribute("productlist");
    String[][] strings;

    if(list != null){
        String[][] item = new String[list.size()][];
            strings = list.get(Integer.parseInt(basket_id));
            strings[Integer.parseInt(basket_id)][1] = basket_amount;
    }
    response.sendRedirect("basket.jsp");
%>
몇번째? <%=basket_id%><br>
몇개? <%=basket_amount%>
</body>
</html>
