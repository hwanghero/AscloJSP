<%@ page import="java.util.ArrayList" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Arrays" %>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    // 추가 버튼 누를시 작동.
    // 게시글 번호를 저장해서 넘겨주면됨

    ArrayList<String[][]> list = (ArrayList) session.getAttribute("productlist");
    String[][] strings;

    String name = request.getParameter("name");
    String count = request.getParameter("count");
    String ss_basket_count = request.getParameter("basket_count");

    String basket_count = (String)session.getAttribute("Basket_count");
    String[][] item = new String[1][2];

    boolean check = false;
    int save_i = 0;

    // 이 부분이 이상함 어차피 session에 add인데 구지 [lastindex+1][2]를 해야하나 값도 안불러와짐.
    if(basket_count != null){
        item = new String[Integer.parseInt(basket_count)+1][2];
    }

    if(Integer.parseInt(ss_basket_count) > 0){
        for(int i=0; i<Integer.parseInt(ss_basket_count); i++){
            strings = list.get(i);
            System.out.println(i+" "+strings[i][0]);

            if(strings[i][0].equals(name)){
                System.out.println("ok!~ "+strings[i][0]+"="+name);
                item[i][0] = name;
                item[i][1] = String.valueOf((Integer.parseInt(count)+Integer.parseInt(strings[i][1])));
                check = true;
                save_i = i;
            }else{
                item[Integer.parseInt(ss_basket_count)][0] = name;
                item[Integer.parseInt(ss_basket_count)][1] = count;
            }
        }
    }else{
        item[Integer.parseInt(ss_basket_count)][0] = name;
        item[Integer.parseInt(ss_basket_count)][1] = count;
    }

    if(list==null)
    {
        list = new ArrayList<String[][]>();
        session.setAttribute("productlist", list);
    }

    if(!check){
        list.add(item);
    }else{
        list.set(save_i, item);
    }

    int i=1;
    while(list.size()>i) i++;

    session.setAttribute("Basket_count", Integer.toString(i));

    System.out.println("add1: "+ss_basket_count);
    System.out.println("add2: "+basket_count);

    response.sendRedirect("basket.jsp");
%>
</body>
<%=ss_basket_count%>
</html>
