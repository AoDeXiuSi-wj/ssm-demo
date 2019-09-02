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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
        <link href="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" crossorigin="anonymous">
        <link href="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/themes/explorer-fas/theme.css" media="all" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/js/plugins/piexif.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/js/plugins/sortable.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/js/fileinput.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/js/locales/fr.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/js/locales/es.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/themes/fas/theme.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/themes/explorer-fas/theme.js" type="text/javascript"></script>
    </head>
    <body>
        <form enctype="multipart/form-data">
            <div class="form-group">
                <div class="file-loading">
                    <input id="file-5" class="file" type="file" multiple data-preview-file-type="any" data-upload-url="#" data-theme="fas">
                </div>
            </div>
        </form>
        <script>
            $("#file-5").fileinput({
                theme: 'fas',
                showUpload: true,
                showCaption: true,
                browseClass: "btn btn-primary",
                fileType: "any",
                previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
                overwriteInitial: false,
                initialPreviewAsData: true,
                minImageWidth: 50, //图片的最小宽度
                minImageHeight: 150,//图片的最小高度
                maxImageWidth: 1000,//图片的最大宽度
                maxImageHeight: 1000,//图片的最大高度
                maxFileSize: 1024,//单位为kb，如果为0表示不限制文件大小
                minFileCount: 1, //每次上传允许的最少文件数。如果设置为0，则表示文件数是可选的。默认为0
                maxFileCount: 5, //每次上传允许的最大文件数。如果设置为0，则表示允许的文件数是无限制的。默认为0
                layoutTemplates:{
                    actionUpload:'',//去除上传预览缩略图中的上传图片
                    //actionZoom:'',   //去除上传预览缩略图中的查看详情预览的缩略图标
                    actionDownload:'', //去除上传预览缩略图中的下载图标
                    //actionDelete:'', //去除上传预览的缩略图中的删除图标
                },
                initialPreview: [
                    "http://lorempixel.com/1920/1080/transport/1",
                    "http://lorempixel.com/1920/1080/transport/2",
                    "http://lorempixel.com/1920/1080/transport/3"
                ],
                initialPreviewConfig: [
                    {caption: "transport-1.jpg", size: 329892, width: "120px", url: "{$url}", key: 1},
                    {caption: "transport-2.jpg", size: 872378, width: "120px", url: "{$url}", key: 2},
                    {caption: "transport-3.jpg", size: 632762, width: "120px", url: "{$url}", key: 3}
                ]
                /*
                 $("#test-upload").on('fileloaded', function(event, file, previewId, index) {
                 alert('i = ' + index + ', id = ' + previewId + ', file = ' + file.name);
                 });
                 */
            });
        </script>
    </body>
</html>
