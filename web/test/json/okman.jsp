<%@page language="java" contentType="application/json; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%

    String[][] sampleArr = {
            {"test", "hero"},
            {"test2", "kim"},
            {"test3", "god"}
    };
    JSONArray itemList = new JSONArray();
    for(int i=0; i <sampleArr.length; i++){
        JSONObject tempjson = new JSONObject();
        tempjson.put("name", sampleArr[i][0]);
        tempjson.put("age", sampleArr[i][1]);

        itemList.add(tempjson);
    }
    out.println(itemList);
%>