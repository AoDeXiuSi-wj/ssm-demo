<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <title>文件上传</title>
    <base href="<%=basePath%>">
    <meta charset="utf-8"/>
    <link href="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet"  crossorigin="anonymous">
    <link href="${pageContext.request.contextPath }/static/bootstrap-fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="${pageContext.request.contextPath }/static/jquery-3.3.1.min.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/js/bootstrap.js" rel="stylesheet"  crossorigin="anonymous">
    <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/fileinput.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/locales/zh.js" type="text/javascript"></script>
</head>
<body>
    <!-- some CSS styling changes and overrides -->
    <style>
        .kv-avatar .krajee-default.file-preview-frame,.kv-avatar .krajee-default.file-preview-frame:hover {
            margin: 0;
            padding: 0;
            border: none;
            box-shadow: none;
            text-align: center;
        }
        .kv-avatar {
            display: inline-block;
        }
        .kv-avatar .file-input {
            display: table-cell;
            width: 213px;
        }
        .kv-reqd {
            color: red;
            font-family: monospace;
            font-weight: normal;
        }
    </style>

    <!-- markup -->
    <!-- note: your server code `/site/avatar_upload/2` will receive `$_FILES['avatar-2']` on form submission -->
    <!-- the avatar markup -->
    <div id="kv-avatar-errors-2" class="center-block" style="width:800px;display:none;margin-bottom: 350px"></div>
    <form class="form form-vertical" action="/site/avatar-upload/2" method="post" enctype="multipart/form-data">
        <div class="row">
            <div class="col-sm-4 text-center">
                <div class="kv-avatar">
                    <div class="file-loading">
                        <input id="avatar-2" name="avatar-2" type="file" required>
                    </div>
                </div>
                <div class="kv-avatar-hint">
                    <small>Select file < 1500 KB</small>
                </div>
            </div>
            <div class="col-sm-5">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="fname">
                                UserName
                                 <span class="kv-reqd">*</span>
                                <input type="text" class="form-control" name="fname" required>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="email">Email Address<span class="kv-reqd">*</span></label>
                            <input type="email" class="form-control" name="email" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="pwd">Password<span class="kv-reqd">*</span></label>
                            <input type="password" class="form-control" name="pwd" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <hr>
                    <div class="text-right">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- the fileinput plugin initialization -->
    <script>
        var btnCust = '<button type="button" class="btn btn-secondary" title="Add picture tags" ' +
            'onclick="alert(\'Call your custom code here.\')">' +
            '<i class="glyphicon glyphicon-tag"></i>' +
            '</button>';
        $("#avatar-2").fileinput({
            overwriteInitial: true,
            minImageWidth: 30, //图片的最小宽度
            minImageHeight: 30,//图片的最小高度
            maxFileSize: 1500,
            showClose: true,
            showCaption: false,
            showBrowse: false,
            browseOnZoneClick: true,
            removeLabel: '',
            removeIcon: '<i class="glyphicon glyphicon-remove"></i>',
            removeTitle: 'Cancel or reset changes',
            elErrorContainer: '#kv-avatar-errors-2',
            msgErrorClass: 'alert alert-block alert-danger',
            defaultPreviewContent: '<img src="static/frame/img/61ba165.jpg" alt="Your Avatar"><h6 class="text-muted">Click to select</h6>',
            layoutTemplates: {main2: '{preview} ' +  btnCust + ' {remove} {browse}'},
            allowedFileExtensions: ["jpg", "png", "gif"]
        });
    </script>
</body>
</html>