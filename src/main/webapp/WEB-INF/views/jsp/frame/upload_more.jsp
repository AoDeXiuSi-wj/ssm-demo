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
        <%--<link href="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet"  crossorigin="anonymous">--%>
        <%--<link href="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>--%>
        <%--<link href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" rel="stylesheet"  crossorigin="anonymous">--%>
        <%--<link href="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/themes/explorer-fas/theme.css" media="all" rel="stylesheet" type="text/css"/>--%>
        <%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>--%>
        <%--<script src="${pageContext.request.contextPath }/static/jquery-3.3.1.min.js" type="text/javascript"></script>--%>
        <%--<script src="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>--%>
        <%--<script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/plugins/piexif.js" type="text/javascript"></script>--%>
        <%--<script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/plugins/sortable.js" type="text/javascript"></script>--%>
        <%--<script src="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/js/fileinput.js" type="text/javascript"></script>--%>
        <%--<script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/themes/fas/theme.js" type="text/javascript"></script>--%>
        <%--<script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/themes/explorer-fas/theme.js" type="text/javascript"></script>--%>
        <%--<script src="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/js/locales/zh.js" type="text/javascript"></script>--%>

        <link href="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet"  crossorigin="anonymous">
        <link href="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath }/static/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/js/fileinput.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/themes/fas/theme.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/themes/explorer-fas/theme.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput-master/js/locales/zh.js" type="text/javascript"></script>
        <script>
            $(function () {
                initFileInput("upFile");
            })

            function initFileInput(ctrlName) {
                var control = $('#' + ctrlName);
                control.fileinput({
                    language: 'zh', //设置语言
                    uploadUrl: "file/up", //上传的地址
                    allowedFileExtensions: ['jpg', 'gif', 'png','doc','docx','pdf','ppt','pptx','txt'],//接收的文件后缀
                    maxFilesNum : 5,//上传最大的文件数量
                    //uploadExtraData:{"id": 1, "fileName":'123.mp3'},
                    uploadAsync: true, //默认异步上传
                    showUpload: false, //是否显示上传按钮
                    showRemove : true, //显示移除按钮
                    showPreview : true, //是否显示预览
                    showCaption: false,//是否显示标题
                    browseClass: "btn btn-success", //按钮样式
                    //dropZoneEnabled: true,//是否显示拖拽区域
                    //minImageWidth: 50, //图片的最小宽度
                    //minImageHeight: 50,//图片的最小高度
                    //maxImageWidth: 1000,//图片的最大宽度
                    //maxImageHeight: 1000,//图片的最大高度
                    maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
                    //minFileCount: 0,
                    //maxFileCount: 10, //表示允许同时上传的最大文件个数
                    enctype: 'multipart/form-data',
                    validateInitialCount:true,
                    previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
                    msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
                    layoutTemplates:{//对象用于渲染布局的每个部分的模板配置。您可以设置以下模板来控制窗口小部件布局.eg:去除上传图标
                        actionUpload:'',//去除上传预览缩略图中的上传图片
                        actionZoom:'',   //去除上传预览缩略图中的查看详情预览的缩略图标
                        actionDownload:'', //去除上传预览缩略图中的下载图标
                        actionDelete:'', //去除上传预览的缩略图中的删除图标
                    },
                }).on('filepreupload', function(event, data, previewId, index) {     //上传中
                    var form = data.form, files = data.files, extra = data.extra,
                        response = data.response, reader = data.reader;
                    console.log('文件正在上传');
                }).on("fileuploaded", function (event, data, previewId, index) {    //一个文件上传成功
                    console.log('文件上传成功！'+data.id);

                }).on('fileerror', function(event, data, msg) {  //一个文件上传失败
                    console.log('文件上传失败！'+data.id);
                })
            }
        </script>
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

            <div class="container my-4">
                <div class="form-group">
                    <div class="file-loading">
                        <input id="upFile" class="file" type="file" multiple data-preview-file-type="any" data-upload-url="file/up" data-theme="fas">
                    </div>
                    <p class="help-block">支持jpg、jpeg、png、gif格式，大小不超过2.0M</p>
                </div>
            </div>
        </div>
    </body>
</html>
