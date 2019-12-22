<%@page import="Member.AscloSQL"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.text.*"%>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("euc-kr");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    try {
        AscloSQL MICA = AscloSQL.getInstance();
    } catch (JSchException | ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }

    int allpage = AscloSQL.getPagingNum("");
    String getpage = request.getParameter("page");
%>

<p>현재페이지: <%=getpage%><br>
총 페이지: <%=allpage%><br>

<%
    String[][] list = null;

    try {
        if(getpage.equals("1")){
            list = AscloSQL.getPaginglist("", 0, 10);
            out.print("0, 10");
        }else{
            list = AscloSQL.getPaginglist("", ((Integer.parseInt(getpage)-1)*10), 10);
            out.print(((Integer.parseInt(getpage)-1)*10)+", 10");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }

    int listcount = 5;
    int maxpage;

    int nowpage = Integer.parseInt(getpage);
    
    for(int i=0; i<10; i++){
        if(list[i][0] != null){
            out.print("<br>"+list[i][0]+" 타이틀 제목: "+list[i][1]+"<br>");
        }
    }

    // 다음 페이지 구현
    if(nowpage % listcount == 1) {
        maxpage = nowpage + 4;
        session.setAttribute("maxpage", maxpage);
        session.setAttribute("nowpage", nowpage);
    }

    int ss_maxpage = (int) session.getAttribute("maxpage");
    int ss_nowpage = (int) session.getAttribute("nowpage");

    // 이전 페이지 구현
    if(nowpage < ss_nowpage){
        ss_nowpage -= 5;
        ss_maxpage -= 5;
    }

    if(getpage.equals("1")){
        out.print("<br><a href=\"paging.jsp?page="+(nowpage)+"\">이전</a> ");
    }else{
        out.print("<br><a href=\"paging.jsp?page="+(nowpage-1)+"\">이전</a> ");
    }

    int maxpage_result = (ss_maxpage-allpage);
    if(maxpage_result > 0){
        ss_maxpage = ss_maxpage - maxpage_result;
    }

    for(int i=ss_nowpage; i<=ss_maxpage; i++){
        out.print(" <a href=\"paging.jsp?page="+i+"\">"+i+"</a>");
    }

    if(Integer.parseInt(getpage) == allpage){
        out.print(" <a href=\"paging.jsp?page="+(nowpage)+"\">다음</a>");
    }else{
        out.print(" <a href=\"paging.jsp?page="+(nowpage+1)+"\">다음</a>");
    }

    out.print("<br>max page:"+ss_maxpage);
    out.print("<br>now page:"+ss_nowpage);
%>
</body>
</html>