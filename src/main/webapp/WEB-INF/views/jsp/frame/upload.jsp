<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
    <head>
        <base href="<%=basePath%>">
        <title>Title</title>
        <%--框架静态资源 start--%>
        <!-- Bootstrap CSS-->
        <link rel="stylesheet" href="${pageContext.request.contextPath }/static/frame/vendor/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome CSS-->
        <link rel="stylesheet" href="${pageContext.request.contextPath }/static/frame/vendor/font-awesome/css/font-awesome.min.css">
        <!-- Fontastic Custom icon font-->
        <link rel="stylesheet" href="${pageContext.request.contextPath }/static/frame/css/fontastic.css">
        <!-- Google fonts - Poppins -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
        <!-- theme stylesheet-->
        <link rel="stylesheet" href="${pageContext.request.contextPath }/static/frame/css/style.default.css" id="theme-stylesheet">
        <!-- Custom stylesheet - for your changes-->
        <link rel="stylesheet" href="${pageContext.request.contextPath }/static/frame/css/custom.css">
        <!-- Favicon-->
        <link rel="shortcut icon" href="${pageContext.request.contextPath }/static/frame/img/favicon.ico">
        <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
        <script src="${pageContext.request.contextPath }/static/frame/vendor/jquery/jquery.min.js"></script>
        <%--框架静态资源 end--%>
        <%--文件上传静态资源 start--%>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <link href="${pageContext.request.contextPath }/static/bootstrap-fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath }/static/bootstrap-fileinput/themes/explorer-fas/theme.css" media="all" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/plugins/piexif.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/plugins/sortable.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/fileinput.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/locales/fr.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/locales/es.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/themes/fas/theme.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/themes/explorer-fas/theme.js" type="text/javascript"></script>
        <%--文件上传静态资源 end--%>
    </head>
    <body>
        <div class="content-inner">
            <!-- Page Header-->
            <header class="page-header">
                <div class="container-fluid">
                    <h2 class="no-margin-bottom">Upload</h2>
                </div>
            </header>
            <!-- Breadcrumb-->
            <div class="breadcrumb-holder container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item active">Upload</li>
                </ul>
            </div>

            <div class="form-group">
                <div class="file-loading">
                    <label>Preview File Icon</label>
                    <input id="file-3" type="file" multiple>
                </div>
            </div>
        </div>
    </body>
</html>
