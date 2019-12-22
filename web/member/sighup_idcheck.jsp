<%@page import="Member.AscloSQL"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("euc-kr");%>
<%
	String id = request.getParameter("id");
	try {
		AscloSQL MICA = AscloSQL.getInstance();
	} catch (JSchException | ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}
	int check = 0;
	try {
		check = AscloSQL.confirmID(id);
	} catch (Exception e) {
		e.printStackTrace();
	}
	if(check == 1){
		out.println("1");
	}else{
		out.println("0");
	}
%>