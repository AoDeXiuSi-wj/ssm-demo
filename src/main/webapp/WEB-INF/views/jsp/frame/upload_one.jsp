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
    <link href="${pageContext.request.contextPath }/static/frame/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" >
    <link href="${pageContext.request.contextPath }/static/bootstrap-fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="${pageContext.request.contextPath }/static/jquery.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/static/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/fileinput.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/plugins/piexif.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/plugins/sortable.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/themes/fas/theme.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/themes/explorer-fas/theme.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/static/bootstrap-fileinput/js/locales/zh.js" type="text/javascript"></script>
</head>
<body>
    <div class="container-fluid">
        <form id="form" action="" method="post" enctype="multipart/form-data">
            <div class="row form-group">
                <div class="panel panel-primary">
                    <div class="panel-heading" align="center">
                        <label style="text-align: center;font-size: 18px;">文 件 上 传</label>
                    </div>
                    <div class="panel-body">
                        <div class="col-sm-12">
                            <%--data-max(min)-file-count="x" 设置为X个文件，限制上传文件数--%>
                            <input id="input-id" name="file" multiple type="file" data-show-caption="true">
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
<script>
    $(function () {
        initFileInput("input-id");
    })

    function initFileInput(ctrlName) {
        var control = $('#' + ctrlName);
        control.fileinput({
            language: 'zh', //设置语言
            uploadUrl: "file/up", //上传的地址
            allowedFileExtensions: ['jpg','jpeg','gif', 'png','doc','docx','pdf','ppt','pptx','txt'],//接收的文件后缀
            maxFilesNum : 1,//上传最大的文件数量
            //uploadExtraData:{"id": 1, "fileName":'123.mp3'},
            uploadAsync: true, //默认异步上传
            showUpload: true, //是否显示上传按钮
            showRemove: true, //显示移除按钮
            showPreview: true, //是否显示预览
            showCancel:true,   //是否显示文件上传取消按钮。默认为true。只有在AJAX上传过程中，才会启用和显示
            showCaption: true,//是否显示文件标题，默认为true
            browseClass: "btn btn-primary", //文件选择器/浏览按钮的CSS类。默认为btn btn-primary
            dropZoneEnabled: true,//是否显示拖拽区域
            minImageWidth: 50, //图片的最小宽度
            minImageHeight: 50,//图片的最小高度
            maxImageWidth: 1000,//图片的最大宽度
            maxImageHeight: 1000,//图片的最大高度
            maxFileSize: 1024,//单位为kb，如果为0表示不限制文件大小
            minFileCount: 1, //每次上传允许的最少文件数。如果设置为0，则表示文件数是可选的。默认为0
            maxFileCount: 5, //每次上传允许的最大文件数。如果设置为0，则表示允许的文件数是无限制的。默认为0
            previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",//当检测到用于预览的不可读文件类型时，将在每个预览文件缩略图中显示的图标。默认为<i class="glyphicon glyphicon-file"></i>
            msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！"//字符串，当文件数超过设置的最大计数时显示的消息 maxFileCount。默认为：选择上传的文件数（{n}）超出了允许的最大限制{m}。请重试您的上传！,
            /*layoutTemplates:{//对象用于渲染布局的每个部分的模板配置。您可以设置以下模板来控制窗口小部件布局.eg:去除上传图标
                actionUpload:'',//去除上传预览缩略图中的上传图片
                actionZoom:'',   //去除上传预览缩略图中的查看详情预览的缩略图标
                actionDownload:'', //去除上传预览缩略图中的下载图标
                actionDelete:'', //去除上传预览的缩略图中的删除图标
            }*/
        }).on('filepreupload', function(event, data, previewId, index) {     //上传中
            var form = data.form, files = data.files, extra = data.extra,
            response = data.response, reader = data.reader;
            console.log('文件正在上传');
        }).on("fileuploaded", function (event, data, previewId, index) {    //一个文件上传成功
            console.log('文件上传成功！'+data.id);
        }).on('fileerror', function(event, data, msg) {  //一个文件上传失败
            console.log('文件上传失败！'+data.id);
        }).on('filebatchpreupload', function(event, data) { //该方法将在上传之前触发
            var id = $('#id option:selected').val();
            if(id == 0){
                return {
                    message: "请选择", // 验证错误信息在上传前要显示。如果设置了这个设置，插件会在调用时自动中止上传，并将其显示为错误消息。您可以使用此属性来读取文件并执行自己的自定义验证
                    data:{} // any other data to send that can be referred in `filecustomerror`
                };
            }
        });

    }

    //fileuploaded此事件仅针对ajax上传触发，并在每个缩略图文件上传完成后触发。此事件仅针对ajax上传并在以下情况下触发：
    // 当点击每个预览缩略图中的上传图标并且文件上传成功时，或者当你有 uploadAsync设置为true您已触发批量上传。
    // 在这种情况下，fileuploaded每一个人选择的文件被上传成功后，触发事件。
    /*var id_str = '';
    $('#input-id').on('fileuploaded', function(event, data, previewId, index) {
        if(typeof(data.response.id) != 'undefined'){
            id_str = id_str+data.response.id+',';
        }
    });
    // filebatchuploadcomplete此事件仅在ajax上传和完成同步或异步ajax批量上传后触发。
    $('#input-id').on('filebatchuploadcomplete',function (event,files,extra) {
        if(id_str.length == 0){
            layer.msg('上传失败', {icon: 0});//弹框提示
            return false;
        }
        setTimeout(function(){ //执行延时关闭
            closeSelf();
        },1000);
    });*/
</script>
</body>
</html>