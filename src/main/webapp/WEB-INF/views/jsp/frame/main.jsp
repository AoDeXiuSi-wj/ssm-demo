<%@ page import="com.ssm.demo.entity.PUser" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    PUser pUser= (PUser) request.getSession().getAttribute("user_info");
%>
<html>
    ${pUser.getUname()}
    <head>
        <base href="<%=basePath%>">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Bootstrap Material Admin by Bootstrapious.com</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="robots" content="all,follow">
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
        <script src="${pageContext.request.contextPath }/static/frame/vendor/popper.js/umd/popper.min.js"> </script>
        <script src="${pageContext.request.contextPath }/static/frame/vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath }/static/frame/vendor/jquery.cookie/jquery.cookie.js"> </script>
        <script src="${pageContext.request.contextPath }/static/frame/vendor/chart.js/Chart.min.js"></script>
        <script src="${pageContext.request.contextPath }/static/frame/vendor/jquery-validation/jquery.validate.min.js"></script>
        <script src="${pageContext.request.contextPath }/static/frame/js/charts-custom.js"></script>
        <!-- Main File-->
        <script src="${pageContext.request.contextPath }/static/frame/js/front.js"></script>
        <%--框架静态资源 end--%>
        <script>
            $(function () {
                //alert(document.body.offsetHeight);
            })

        </script>
    </head>
    <body style="overflow-y: hidden">
        <div class="page" style="height: 695px;border: 0px solid green;overflow-y: hidden">
            <!-- Main Navbar-->
            <header class="header">
                <nav class="navbar">
                    <!-- Search Box-->
                    <div class="search-box">
                        <button class="dismiss"><i class="icon-close"></i></button>
                        <form id="searchForm" action="#" role="search">
                            <input type="search" placeholder="What are you looking for..." class="form-control">
                        </form>
                    </div>
                    <div class="container-fluid">
                        <div class="navbar-holder d-flex align-items-center justify-content-between">
                            <!-- Navbar Header-->
                            <div class="navbar-header">
                                <!-- Navbar Brand --><a href="../others/index.jsp" class="navbar-brand d-none d-sm-inline-block">
                                <div class="brand-text d-none d-lg-inline-block"><span>Bootstrap </span><strong>Dashboard</strong></div>
                                <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div></a>
                                <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                            </div>
                            <!-- Navbar Menu -->
                            <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                                <!-- Search-->
                                <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li>
                                <!-- Notifications-->
                                <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">12</span></a>
                                    <ul aria-labelledby="notifications" class="dropdown-menu">
                                        <li><a rel="nofollow" href="#" class="dropdown-item">
                                            <div class="notification">
                                                <div class="notification-content"><i class="fa fa-envelope bg-green"></i>You have 6 new messages </div>
                                                <div class="notification-time"><small>4 minutes ago</small></div>
                                            </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item">
                                            <div class="notification">
                                                <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                                <div class="notification-time"><small>4 minutes ago</small></div>
                                            </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item">
                                            <div class="notification">
                                                <div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>
                                                <div class="notification-time"><small>4 minutes ago</small></div>
                                            </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item">
                                            <div class="notification">
                                                <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                                                <div class="notification-time"><small>10 minutes ago</small></div>
                                            </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all notifications                                            </strong></a></li>
                                    </ul>
                                </li>
                                <!-- Messages                        -->
                                <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">10</span></a>
                                    <ul aria-labelledby="notifications" class="dropdown-menu">
                                        <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                                            <div class="msg-profile"> <img src="${pageContext.request.contextPath }/static/frame/img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                            <div class="msg-body">
                                                <h3 class="h5">Jason Doe</h3><span>Sent You Message</span>
                                            </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                                            <div class="msg-profile"> <img src="${pageContext.request.contextPath }/static/frame/img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                            <div class="msg-body">
                                                <h3 class="h5">Frank Williams</h3><span>Sent You Message</span>
                                            </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                                            <div class="msg-profile"> <img src="${pageContext.request.contextPath }/static/frame/img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                            <div class="msg-body">
                                                <h3 class="h5">Ashley Wood</h3><span>Sent You Message</span>
                                            </div></a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>Read all messages   </strong></a></li>
                                    </ul>
                                </li>
                                <!-- Languages dropdown    -->
                                <li class="nav-item dropdown"><a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle"><img src="${pageContext.request.contextPath }/static/frame/img/flags/16/GB.png" alt="English"><span class="d-none d-sm-inline-block">English</span></a>
                                    <ul aria-labelledby="languages" class="dropdown-menu">
                                        <li><a rel="nofollow" href="#" class="dropdown-item"> <img src="${pageContext.request.contextPath }/static/frame/img/flags/16/DE.png" alt="English" class="mr-2">German</a></li>
                                        <li><a rel="nofollow" href="#" class="dropdown-item"> <img src="${pageContext.request.contextPath }/static/frame/img/flags/16/FR.png" alt="English" class="mr-2">French                                         </a></li>
                                    </ul>
                                </li>
                                <!-- Logout    -->
                                <li class="nav-item"><a href="login/out" class="nav-link logout"> <span class="d-none d-sm-inline">Logout</span><i class="fa fa-sign-out"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <div class="page-content d-flex align-items-stretch" style="border:0px solid red;">
                <!-- Side Navbar -->
                <nav class="side-navbar" style="height: 610px;"> <%--style="height: 620px;"--%>
                    <!-- Sidebar Header-->
                    <div class="sidebar-header d-flex align-items-center">
                        <div class="avatar"><img src="${pageContext.request.contextPath }/static/frame/img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="title">
                            <h1 class="h4">${sessionScope.user_info.uname}</h1>
                            <p>Web Designer</p>
                        </div>
                    </div>
                    <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
                    <ul class="list-unstyled">
                        <li class="active" id="22"><a href="#" onclick="reForword(this)" name="home"> <i class="icon-home"></i>Home </a></li>
                        <li><a href="javascript:void(0)" onclick="reForword(this)" name="tables"><i class="icon-grid"></i>Tables </a></li>
                        <li><a href="javascript:void(0)" onclick="reForword(this)" name="charts"> <i class="fa fa-bar-chart"></i>Charts </a></li>
                        <li><a href="javascript:void(0)" onclick="reForword(this)" name="forms"> <i class="icon-padnote"></i>Forms </a></li>
                        <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>File Management</a>
                            <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                                <li><a href="javascript:void(0)" onclick="reForword(this)" name="oneupload"><i>One File Upload</i></a></li>
                                <li><a href="javascript:void(0)" onclick="reForword(this)" name="moreupload"><i>More File Upload</i></a></li>
                                <li><a href="javascript:void(0)" onclick="reForword(this)" name="testupload">Test File Upload</a></li>
                            </ul>
                        </li>
                    </ul><span class="heading">Extras</span>
                    <ul class="list-unstyled">
                        <li> <a href="#"> <i class="icon-flask"></i>Demo </a></li>
                        <li> <a href="#"> <i class="icon-screen"></i>Demo </a></li>
                        <li> <a href="#"> <i class="icon-mail"></i>Demo </a></li>
                        <li> <a href="#"> <i class="icon-picture"></i>Demo </a></li>
                    </ul>
                </nav>
                <div class="content-inner">
                    <iframe id="part" name="part" src="data/menu?type=home" frameborder="0" width="100%" height="100%"></iframe>
                </div>
            </div>
        </div>
        <!-- Page Footer-->
        <footer class="main-footer" style="margin-bottom: -10px;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <p>Your company &copy; 2017-2019</p>
                    </div>
                    <div class="col-sm-6 text-right">
                        <p>Design by Bootstrapious.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
                        <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                    </div>
                </div>
            </div>
        </footer>
        <script>
           /* $.ajax({
                url:"info",
                dataType:"text",
                type:"post",
                error:function (xhr,state,errorThrown){
                    var status = xhr.status;
                    if (status) {
                        alert("error,网络错误,发生网络错误，错误码为：" + xhr.status);
                    } else {
                        alert("error,网络错误,未知网络错误, 请确保设备处在联网状态");
                    }
                }
            });*/
            function reForword(_obj) {
                $(".list-unstyled").find("li[class*='active']").removeClass("active");
                $(_obj).parent("li").addClass("active");
                var _type=$(_obj).attr("name");
                part.location="data/menu?type="+_type;
            }
        </script>
    </body>
</html>