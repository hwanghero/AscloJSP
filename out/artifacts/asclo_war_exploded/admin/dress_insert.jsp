<%--
CREATE TABLE asclo_dress(
dress_num INT NOT NULL,
dress_title varchar(200) NOT NULL,
dress_img varchar(200),
dress_content VARCHAR(2000),
dress_count INT,
dress_price INT,
dress_date DATE
);
--%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="java.io.File" %>

<%@page import="Member.AscloSQL"%>
<%@page import="File.AscloSFTP"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>게시글 게시</title>
</head>
<body>
<%
    if (session.getAttribute("adminID") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    AscloSFTP a = new AscloSFTP();
    a.init();

    String  saveDir = application.getRealPath("/img/");
    int MaxSize = 1024*1024*100;
    String encType = "UTF-8";
    MultipartRequest multipartRequest = null;
    try{
        multipartRequest = new MultipartRequest(request, saveDir, MaxSize, encType);
    }catch (Exception e){
        response.sendRedirect("login.jsp");
        return;
    }

    //폼에서 가져온값
    String title = multipartRequest.getParameter("title");
    String content = multipartRequest.getParameter("content");
    String price = multipartRequest.getParameter("price");
    String count = multipartRequest.getParameter("count");
    String size = multipartRequest.getParameter("size");
    String catagory = multipartRequest.getParameter("catagory");
    String color = multipartRequest.getParameter("color");

    //파일
    String filename = multipartRequest.getOriginalFileName("file");
    String goodsname = multipartRequest.getOriginalFileName("goods");

    out.write("이름: "+ title + "<br>");
    out.write("대표 이미지 업로드 파일명: "+ multipartRequest.getFilesystemName("file") + "<br>");
    out.write("상품 이미지 업로드 파일명: "+ multipartRequest.getFilesystemName("goods") + "<br>");
    out.write("내용: "+ content + "<br>");
    out.write("가격: "+ price + "<br>");
    out.write("개수: "+ count + "<br>");
    out.write("사이즈: "+ size + "<br>");
    out.write("카테고리: "+ catagory + "<br>");
    out.write("컬러: "+ color + "<br>");

    // 대표 이미지 업로드
    String[] filesplit = filename.split("\\.");
    String imgname = title+"."+filesplit[1];
    File file = multipartRequest.getFile("file");
    a.upload("/home/p201606010/public_html/asclo_dress/", file, imgname);
    out.write("필터링된 대표 이미지 이름: "+imgname+ "<br");
    // 상품 이미지 업로드
    String[] goodssplit = goodsname.split("\\.");
    String goodsimgname = title+".goods."+goodssplit[1];
    File file2 = multipartRequest.getFile("goods");
    a.upload("/home/p201606010/public_html/asclo_dress/", file2, goodsimgname);
    out.write("필터링된 상품 이미지 이름: "+goodsimgname+ "<br");

    try {
        AscloSQL MICA = AscloSQL.getInstance();
    } catch (JSchException | ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }

    SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd");
    Calendar time = Calendar.getInstance();
    String format_time1 = format1.format(time.getTime());

    // 너무 높은 수를 하면 int가 넘어서서 에러가 발생
    try {
        AscloSQL.InsertDress(title, imgname, content, Integer.parseInt(count), Integer.parseInt(price), format_time1, goodsimgname, size, catagory, color);
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>
