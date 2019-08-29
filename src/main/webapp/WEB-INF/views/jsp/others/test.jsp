<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
    <head>
        <base href="<%=basePath%>">
        <title>Bootstrap fileupload</title>

        <%--文件上传静态资源 start--%>
        <link href="${pageContext.request.contextPath }/static/bootstrap-fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath }/static/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/fileinput.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

        <link href="${pageContext.request.contextPath }/static/bootstrap-fileinput/themes/explorer-fas/theme.css" media="all" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/plugins/piexif.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/plugins/sortable.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/themes/fas/theme.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/themes/explorer-fas/theme.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/locales/zh.js" type="text/javascript"></script>
        <%--文件上传静态资源 end--%>
        <script>
            $("#upFile").fileinput({
                theme: "gly",

                language: "zh", //设置语言

                uploadUrl:"file/up", //上传的地址

                allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀

                //allowedFileTypes: ['image'],//图片类型都可上传  allowedFileExtensions，allowedFileTypes二者之一即可，在使用 allowedFileTypes后，allowedFileExtensions将无效。

                //uploadExtraData:{"id": 1, "fileName":'123.mp3'},

                uploadAsync: true, //默认异步上传

                showUpload:false, //是否显示上传按钮

                showRemove :false, //显示移除按钮

                showPreview :false, //是否显示预览

                showCaption:false,//是否显示标题

                browseClass:"btn btn-primary", //按钮样式    

                dropZoneEnabled: false,//是否显示拖拽区域

                //minImageWidth: 50, //图片的最小宽度

                minImageHeight: 100,//图片的最小高度

                //maxImageWidth: 1000,//图片的最大宽度

                //maxImageHeight: 1000,//图片的最大高度

                //maxFileSize:0,//单位为kb，如果为0表示不限制文件大小

                //minFileCount: 0,

                maxFileCount:1, //表示允许同时上传的最大文件个数

                enctype:'multipart/form-data',

                validateInitialCount:true,

                previewFileIcon: "<iclass='glyphicon glyphicon-king'></i>",

                msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",

            }).on("fileuploaded", function (event, data, previewId, index){
                alert('i = ' + index + ', id = ' + previewId + ', file = ' + file.name);
            });
        </script>
    </head>
    <body>
        <div class="content-inner">
            <%--基本格式--%>
            <%--<div class="container my-4">--%>
            <%--<form id="fm" enctype="multipart/form-data">--%>
            <%--<div class="form-group">--%>
            <%--<div class="file-loading">--%>
            <%--<input id="upFile" class="file" type="file" multiple data-preview-file-type="any" data-upload-url="#" data-theme="fas">--%>
            <%--</div>--%>
            <%--<p class="help-block">支持jpg、jpeg、png、gif格式，大小不超过2.0M</p>--%>
            <%--</div>--%>
            <%--</form>--%>
            <%--</div>--%>

            <div class="container my-4">
                <div class="form-group">
                    <div class="file-loading">
                        <input id="upFile" name="file" class="file" type="file" multiple data-preview-file-type="any" data-upload-url="file/up" data-theme="fas">
                    </div>
                    <p class="help-block">支持jpg、jpeg、png、gif格式，大小不超过2.0M</p>
                </div>
            </div>
        </div>
    </body>
</html>
