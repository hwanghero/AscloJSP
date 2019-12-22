<%@ page import="java.util.ArrayList" %>
<%@page import="Member.AscloSQL"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>

<script>
    function plus() {
        document.frm1.submit();
    }

    function delete2(i) {
        alert("test "+i);
        location.href="basket_remove.jsp?id="+i;
    }
</script>
<%
    // 장바구니 메인.
    // 안에 담긴 정보는 게시글 번호겠죠?
    // 게시글 번호를 불러와서 정보 제공을 합니다.

    try {
        AscloSQL MICA = AscloSQL.getInstance();
    } catch (JSchException | ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }

    String count = (String)session.getAttribute("Basket_count");
    ArrayList<String[][]> list = (ArrayList) session.getAttribute("productlist");
    String[][] strings;

    int total_price = 0;

    if(list != null){
        out.print("<form method='post' action='basket_remove.jsp' name='frm2'>");
        out.print("<table border='1px'>");
        for (int i = 0; i < list.size(); i++) {
            strings = list.get(i);
            //out.print("<tr> <td>번호: "+strings[i][0]+"</td><td>개수: "+strings[i][1]+"</td> </tr>");
            String title = AscloSQL.getDress(Integer.parseInt(strings[i][0]), 0);
            String price = AscloSQL.getDress(Integer.parseInt(strings[i][0]), 3);
            out.println("<tr>");
            out.println("<td> "+i+"번 </td><td> " + strings[i][0] + "번 </td><td>"+title+"</td><td>"+price+"</td><td>개수: "+strings[i][1]+"</td><td><input type='button' value='delete' onclick='delete2("+i+")'></td>");

            out.println("</tr>");
            total_price += Integer.parseInt(price)*Integer.parseInt(strings[i][1]);
        }
        out.print("</table>");

        if(count != null){
            out.print("장바구니: "+Integer.parseInt(count));
            out.print("<br>총 가격: "+total_price);
        }
        out.print("</form>");
    }

    if(count == null){
        count = "0";
    }
%>

<form method="post" action="basket_add.jsp" name="frm1">
    번호 <input type="text" name="name" id="name"><p>
    개수 <input type="text" name="count" id="count">
    <input type="hidden" name="basket_count" id="basket_count" value="<%=count%>">
    <input type="button" value="on" onclick="plus();">
</form>

<%=count%>