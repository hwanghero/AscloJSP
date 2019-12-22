<%--
  Created by IntelliJ IDEA.
  User: owner
  Date: 2019-11-17
  Time: 오후 2:27
  To change this template use File | Settings | File Templates.
--%>
<%@page import="Member.AscloSQL"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.text.*"%>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("euc-kr");%>

<%
    int count=0;
    int price=0;

    try {
        AscloSQL MICA = AscloSQL.getInstance();
    } catch (JSchException | ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }

    try {
        count = AscloSQL.getDresscount();
    } catch (Exception e) {
        e.printStackTrace();
    }

    out.println("<ul class=\"prdList grid3\">");
    DecimalFormat df = new DecimalFormat("###,###");
    String[][] title;
    try {
        title = AscloSQL.getDressTitle();
        for(int i=0; i<count; i++){
            price = Integer.parseInt(title[i][5]);
            out.println(
                    "<li class=\"item xans-record-\">"+
                            "<div class=\"thumbnail\">"+
                            // 게시글 번호, 이미지 이름
                            "<div class=\"prdImg\"><a href=\"/board/dress_show.jsp?num="+title[i][0]+"\" name=\"anchorBoxName_9649\"><img src=\"http://l.bsks.ac.kr/~p201606010/asclo_dress/"+title[i][2]+"\" id=\"\" alt=\"10월 리뷰이벤트\" class=\"thumb thumbout\"/><img src=\"http://l.bsks.ac.kr/~p201606010/asclo_dress/"+title[i][2]+"\" id=\"eListPrdImage9649_2\" alt=\"10월 리뷰이벤트\" class=\"thumb thumbover\"/></a></div>"+
                            "</div>"+
                            "<div class=\"description\">"+
                            // 타이틀
                            "<p class=\"name\"><a href=\"/product/10월-리뷰이벤트/9649/category/1/display/2/\" class=\"\"><span class=\"title displaynone\"><span style=\"font-size:12px;color:#000000;\">상품명</span> :</span> <span style=\"font-size:12px;color:#000000;\">"+title[i][1]+"</span></a></p>"+
                            "<ul class=\"xans-element- xans-product xans-product-listitem-1 xans-product-listitem xans-product-1 spec\"><li rel=\"판매가\" class=\" xans-record-\">"+
                            // 가격
                            "<strong class=\"title displaynone\"><span style=\"font-size:12px;color:#000000;\">판매가</span> :</strong> <span style=\"font-size:12px;color:#000000;\">KRW "+df.format(price)+"</span></li>"+
                            "</ul>"+
                            "<p class=\"promotion\"> </p>"+
                            "</div>"+
                            "</li>"+
                            "</form>");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

