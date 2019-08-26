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
        <script>
            $('#file-fr').fileinput({
                theme: 'fas',
                language: 'fr',
                uploadUrl: '#',
                allowedFileExtensions: ['jpg', 'png', 'gif']
            });
            $('#file-es').fileinput({
                theme: 'fas',
                language: 'es',
                uploadUrl: '#',
                allowedFileExtensions: ['jpg', 'png', 'gif']
            });
            $("#file-0").fileinput({
                theme: 'fas',
                uploadUrl: '#'
            }).on('filepreupload', function(event, data, previewId, index) {
                alert('The description entered is:\n\n' + ($('#description').val() || ' NULL'));
            });
            $("#file-1").fileinput({
                theme: 'fas',
                uploadUrl: '#', // you must set a valid URL here else you will get an error
                allowedFileExtensions: ['jpg', 'png', 'gif'],
                overwriteInitial: false,
                maxFileSize: 1000,
                maxFilesNum: 10,
                //allowedFileTypes: ['image', 'video', 'flash'],
                slugCallback: function (filename) {
                    return filename.replace('(', '_').replace(']', '_');
                }
            });
            /*
             $(".file").on('fileselect', function(event, n, l) {
             alert('File Selected. Name: ' + l + ', Num: ' + n);
             });
             */
            $("#file-3").fileinput({
                theme: 'fas',
                showUpload: false,
                showCaption: false,
                browseClass: "btn btn-primary btn-lg",
                fileType: "any",
                previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
                overwriteInitial: false,
                initialPreviewAsData: true,
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
            });
            $("#file-4").fileinput({
                theme: 'fas',
                uploadExtraData: {kvId: '10'}
            });
            $(".btn-warning").on('click', function () {
                var $el = $("#file-4");
                if ($el.attr('disabled')) {
                    $el.fileinput('enable');
                } else {
                    $el.fileinput('disable');
                }
            });
            $(".btn-info").on('click', function () {
                $("#file-4").fileinput('refresh', {previewClass: 'bg-info'});
            });
            /*
             $('#file-4').on('fileselectnone', function() {
             alert('Huh! You selected no files.');
             });
             $('#file-4').on('filebrowse', function() {
             alert('File browse clicked for #file-4');
             });
             */
            $(document).ready(function () {
                $("#test-upload").fileinput({
                    'theme': 'fas',
                    'showPreview': false,
                    'allowedFileExtensions': ['jpg', 'png', 'gif'],
                    'elErrorContainer': '#errorBlock'
                });
                $("#kv-explorer").fileinput({
                    'theme': 'explorer-fas',
                    'uploadUrl': '#',
                    overwriteInitial: false,
                    initialPreviewAsData: true,
                    initialPreview: [
                        "http://lorempixel.com/1920/1080/nature/1",
                        "http://lorempixel.com/1920/1080/nature/2",
                        "http://lorempixel.com/1920/1080/nature/3"
                    ],
                    initialPreviewConfig: [
                        {caption: "nature-1.jpg", size: 329892, width: "120px", url: "{$url}", key: 1},
                        {caption: "nature-2.jpg", size: 872378, width: "120px", url: "{$url}", key: 2},
                        {caption: "nature-3.jpg", size: 632762, width: "120px", url: "{$url}", key: 3}
                    ]
                });
                /*
                 $("#test-upload").on('fileloaded', function(event, file, previewId, index) {
                 alert('i = ' + index + ', id = ' + previewId + ', file = ' + file.name);
                 });
                 */
            });
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
                <h1>Bootstrap File Input Examples
                    <small><a href="https://github.com/kartik-v/bootstrap-fileinput-samples"><i
                            class="glyphicon glyphicon-download"></i> Download Sample Files</a></small>
                </h1>
                <hr>

                <form enctype="multipart/form-data">

                    <hr>
                    <div class="form-group">
                        <div class="file-loading">
                            <input id="file-5" class="file" type="file" multiple data-preview-file-type="any" data-upload-url="#" data-theme="fas">
                        </div>
                    </div>
                </form>


                <br>
            </div>
        </div>
    </body>
</html>
