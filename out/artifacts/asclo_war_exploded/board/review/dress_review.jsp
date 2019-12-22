<%@ page import="Member.AscloSQL"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
    try {
        AscloSQL MICA = AscloSQL.getInstance();
    } catch (JSchException | ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }

    String num = request.getParameter("num");
    String rv = request.getParameter("rv");
    String review_content = AscloSQL.getReview(num, rv, "content");
    String review_count = AscloSQL.getReview(num, rv, "count");

    try {
        AscloSQL.plusReviewcount(num, rv);
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<font color="black">
리뷰 내용: <%=review_content%>
</font>

<script>
    console.log("review loading success");
</script>