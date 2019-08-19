<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String name=request.getParameter("name");
%>
<html>
    <head>
        <base href="<%=basePath%>">
        <title>Title</title>
    </head>
    <body>
        <jsp:forward page="/menu/main"></jsp:forward>
    </body>
</html>
