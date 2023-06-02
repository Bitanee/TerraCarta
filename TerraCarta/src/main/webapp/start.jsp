<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>대분류명 검색</title>
</head>
<body>
    <%
    String[] selectedIds = request.getParameterValues("sanga");
    if (selectedIds != null && selectedIds.length > 0) {
        StringBuilder urlParams = new StringBuilder();
        for (String id : selectedIds) {
            urlParams.append("id=").append(id).append("&");
        }
        response.sendRedirect("index.html?" + urlParams.toString());
    } else {
        response.sendRedirect("start.html");
    }
    %>
</body>
</html>