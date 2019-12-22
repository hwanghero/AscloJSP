<%@ page import="java.util.ArrayList" %>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ArrayList<String[][]> list = (ArrayList) session.getAttribute("productlist");
    String[][] strings = new String[0][];

    String name = request.getParameter("name");
    String count = request.getParameter("count");

    // 이게 add 데이터
    String ss_basket_count = request.getParameter("a_count");

    // 카운터 받음.
    int basket_count = 0;

    try{
        basket_count = (int) session.getAttribute("Basket_count");
    }catch (Exception e){ }

    String[][] item;

    boolean check = false;

    if(ss_basket_count.equals("0")){
        if(list != null){
            ss_basket_count = String.valueOf(list.size());
        }
    }

    if(basket_count != 0){
        item = new String[Integer.parseInt(ss_basket_count)][2];
    }else{
        item = new String[1][2];
    }

    // null check
    if (Integer.parseInt(ss_basket_count) > 0) {
        System.out.println(" ");
        // listsize 만큼 i 반복
        for (int i = 0; i < list.size(); i++) {
            strings = list.get(i);
            if (strings[i][0].equals(name)) {
                check = true;
                item[i][0] = name;
                item[i][1] = String.valueOf((Integer.parseInt(count) + Integer.parseInt(strings[i][1])));
                list.set(i, item);
                i = list.size();
            } else {
                check = false;
                item[Integer.parseInt(ss_basket_count)-1][0] = name;
                item[Integer.parseInt(ss_basket_count)-1][1] = count;
            }
        }
        System.out.println(" ");
    }else{
        // 첫번째 값 생성이라 index 0으로 고정.
        item[0][0] = name;
        item[0][1] = count;
    }

    if(list == null)
    {
        list = new ArrayList<>();
        session.setAttribute("productlist", list);
    }

    if(!check){
        list.add(item);
    }

    // 세션
    session.setAttribute("Basket_count", list.size());
    System.out.println("bakset_add: "+list.size());
    response.sendRedirect("basket.jsp");
%>
</body>
<%=ss_basket_count%>
</html>
